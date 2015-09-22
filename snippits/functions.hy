(import [itertools [chain]] [collections [ChainMap]])

(defn class-dict [class]
  "Create a dict from class attributes"
  (apply ChainMap (chain [class.__dict__]
                  (genexpr x.__dict__ [x (.mro (type class))]))))

(defn class-format [class format]
  "Format a string on class attributes"
  (apply .format [format] (class-dict class)))
