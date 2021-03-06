#!/bin/sh

make_questions() {
    sed -e "s/TYPE/$1/" -e "s/QUESTION/$2/" > ${FRAMEWORKS_PATH}${2}DayRate.yml <<END
question: How much do you charge per day for a TYPE?
depends:
  - "on": lot
    being:
      - digital-specialists
type: pricing
fields:
  minimum_price: QUESTIONPriceMin
  maximum_price: QUESTIONPriceMax
END

    sed -e "s/TYPE/$1/" -e "s/QUESTION/$2/" > ${FRAMEWORKS_PATH}${2}Locations.yml <<END
question: Where will your TYPE work?
depends:
  - "on": lot
    being:
      - digital-specialists
type: checkboxes
options:
  - label: "Scotland"
  - label: "North East England"
  - label: "North West England"
  - label: "Yorkshire and the Humber"
  - label: "East Midlands"
  - label: "The Midlands"
  - label: "East England"
  - label: "Wales"
  - label: "London"
  - label: "South East England"
  - label: "West England"
  - label: "Northern Ireland"
END
}

make_questions "agile coach" "agileCoach"
make_questions "business analyst" "businessAnalyst"
make_questions "content designer" "contentDesigner"
make_questions "cyber security specialist" "securitySpecialist"
make_questions "delivery manager" "deliveryManager"
make_questions "designer" "designer"
make_questions "developer" "developer"
make_questions "communications manager" "communicationsManager"
make_questions "performance analyst" "performanceAnalyst"
make_questions "portfolio manager" "portfolioManager"
make_questions "product manager" "productManager"
make_questions "programme manager" "programmeManager"
make_questions "service manager" "serviceManager"
make_questions "technical architect" "technicalArchitect"
make_questions "user researcher" "userResearcher"
make_questions "web operations engineer" "webOperations"
