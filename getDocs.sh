## create tdf docs
UpdateDate=`date +"%Y-%m-%d"`
FirstPubDate="2020-01-22"
echo "---
layout: page
title:  TDF Schema
date: $UpdateDate
description: TDF Schema Doc
category: docs-data-schema
---

Extracted from official github repo [https://github.com/scta/tdf-schema](https://github.com/scta/tdf-schema) on $UpdateDate
"> pages/tdf-schema.md

wget -qO- https://raw.githubusercontent.com/scta/tdf-schema/master/readme.md >> pages/tdf-schema.md

## create edf docs
UpdateDate=`date +"%Y-%m-%d"`
echo "---
layout: page
title:  EDF Schema
date: $UpdateDate
description: EDF Schema Doc
category: docs-data-schema
---

Extracted from official github repo [https://github.com/scta/edf-schema](https://github.com/scta/edf-schema) on $UpdateDate
"> pages/edf-schema.md

wget -qO- https://raw.githubusercontent.com/scta/edf-schema/master/docs_source/project-desc-file.md >> pages/edf-schema.md

## create scta rdf docs classes
UpdateDate=`date +"%Y-%m-%d"`
echo "---
layout: page
title:  SCTA RDF Schema Classes
date: $UpdateDate
description: SCTA RDF Schema Doc Classes
category: docs-data-schema
---

Extracted from official github repo [https://github.com/scta/scta-rdf-schema](https://github.com/scta/scta-rdf-schema) on $UpdateDate
"> pages/scta-rdf-schema-classes.md

wget -qO- https://raw.githubusercontent.com/scta/scta-rdf-schema/master/docs_source/scta-rdf-schema.md >> pages/scta-rdf-schema-classes.md

## create scta rdf docs properties
UpdateDate=`date +"%Y-%m-%d"`
echo "---
layout: page
title:  SCTA RDF Schema Properties
date: $UpdateDate
description: SCTA RDF Schema Doc Properties
category: docs-data-schema
---

Extracted from official github repo [https://github.com/scta/scta-rdf-schema](https://github.com/scta/scta-rdf-schema) on $UpdateDate
"> pages/scta-rdf-schema-properties.md

wget -qO- https://raw.githubusercontent.com/scta/scta-rdf-schema/master/docs_source/properties-list.md >> pages/scta-rdf-schema-properties.md

## lombardpress schema critical
UpdateDate=`date +"%Y-%m-%d"`
echo "---
layout: page
title:  LombardPress Critical
date: $UpdateDate
description: LombardPress Critical
category: docs-data-schema
---

Extracted from official github repo [https://github.com/lombardpress/lombardpress-schema](https://github.com/lombardpress/lombardpress-schema) on $UpdateDate
"> pages/lombardpress-schema-critical.md

wget -qO- https://raw.githubusercontent.com/lombardpress/lombardpress-schema/master/docs/critical.md >> pages/lombardpress-schema-critical.md

## lombardpress schema diplomatic
UpdateDate=`date +"%Y-%m-%d"`
echo "---
layout: page
title:  LombardPress Diplomatic
date: $UpdateDate
description: LombardPress Diplomatic
category: docs-data-schema
---

Extracted from official github repo [https://github.com/lombardpress/lombardpress-schema](https://github.com/scta/lombardpress/lombardpress-schema) on $UpdateDate
"> pages/lombardpress-schema-diplomatic.md

wget -qO- https://raw.githubusercontent.com/lombardpress/lombardpress-schema/master/docs/diplomatic.md >> pages/lombardpress-schema-diplomatic.md


## lombardpress schema diplomatic
UpdateDate=`date +"%Y-%m-%d"`
echo "---
layout: page
title:  Cdf Schema
date: $UpdateDate
description: Codex Description File Schema
category: docs-data-schema
---

Extracted from official github repo [https://github.com/scta/cdf-schema](https://github.com/scta/cdf-schema) on $UpdateDate
"> pages/cdf-schema.md

wget -qO- https://raw.githubusercontent.com/scta/cdf-schema/master/readme.md >> pages/cdf-schema.md
