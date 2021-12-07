FROM salesforce/salesforcedx:latest-full

RUN sfdx update 

# RUN sfdx update \
#   && echo y | sfdx plugins:install sfdmu \
#   && echo y | sfdx plugins:install shane-sfdx-plugins \
#   && echo y | sfdx plugins:install @dx-cli-toolbox/sfdx-toolbox-package-utils \
#   && echo y | sfdx plugins:install sfpowerkit
