(ns runner.core
  (:import [java.io File])
  (:require [clojure.java.jdbc :as sql]
            [clojure.edn :as edn])
  (:gen-class))

(def db-info (edn/read-string (slurp "/home/nick/.heylon-prefs.edn")))

(def heylon-db
  {
   :subprotocol "postgresql"
   :classname "org.postgresql.Driver"
   :subname (:subname db-info)
   :user (:user db-info)
   :password (:password db-info)
   })

(defn- get-files
  [dir]
  (let [fs (into [] (.listFiles (File. dir)))]
    (->> fs
        (filter #(.endsWith (.getName %) ".sql"))
        (map #(vector (.getAbsolutePath %) (slurp %)))
        (doall))))

(def dirs-in-order (map #(str "../" %)
                        ["table/" "constraints/" "data/"]))

(defn- run-scripts
  [fs]
  (try
    (doall (map #(do (println "Running" (first %)) (sql/execute! heylon-db [(second %)])) fs))
    (catch Exception e
      (do (println e)
          (shutdown-agents)
          (System/exit 1)))))

(defn -main
  [& args]
  (doall (map run-scripts (map get-files dirs-in-order)))
  (shutdown-agents))
