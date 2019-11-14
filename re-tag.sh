LIST="\
cmh-cb1-qa \
cmh-cb2-qa \
cmh-cb3-qa \
cmh-jenkins-worker1-shared \
ct-swarm-wqa \
wpa-afo-wdev-1805250843 \
wpa-afo-wperf-190327100323 \
wpa-afo-wqa-190130072519 \
wpa-afo-wsit-190306074548 \
wpa-afo-wuat-190131050725 \
wpa-cb04-wperf \
wpa-cb1-perf \
wpa-cb1-wqa \
wpa-cb1-wsit \
wpa-cb2-perf \
wpa-cb2-wqa \
wpa-cb2-wsit \
wpa-cb3-perf \
wpa-cb3-wqa \
wpa-cb3-wsit \
wpa-cb5-perf \
wpa-cb6-perf \
wpa-cb7-perf \
wpa-cb8-perf \
wpa-ck-dashboard-api-wperf-190911092855 \
wpa-ck-dashboard-api-wqa-190911091618 \
wpa-ck-dashboard-api-wsit-190911093054 \
wpa-ck-dashboard-api-wuat-190911092555 \
wpa-ck-product-service-wdev-190709091552 \
wpa-cmh-contentexchange-service-wqa-191010075138 \
wpa-cmh-contentexchange-service-wsit-191001122849 \
wpa-cmh-packagegraph-service-wperf-190925110825 \
wpa-cmh-packagegraph-service-wqa-190925110904 \
wpa-cmh-packagegraph-service-wsit-190925094510 \
wpa-cmh-packagegraph-service-wuat-190925111102 \
wpa-cmh-vendor-api-wdev-190813094028 \
wpa-cmh-vendor-api-wperf-190815201634 \
wpa-cmh-vendor-api-wsit-190813111450 \
wpa-cmh-vendor-api-wuat-190826112421 \
wpa-cmh-vendornotifications-service-wperf-190815200228 \
wpa-cmh-vendornotifications-service-wsit-190812112527 \
wpa-cmh-vendornotifications-service-wuat-190826082456 \
wpa-content-api-wdev-190218070804 \
wpa-content-api-wdev-190218070804 \
wpa-content-api-wdev-190218070804 \
wpa-content-api-wdev-190218070804 \
wpa-content-api-wdev-190218070804 \
wpa-content-api-wdev-190218070804 \
wpa-content-api-wdev-190218070804 \
wpa-content-api-wperf-190218084039 \
wpa-content-api-wqa-190218080451 \
wpa-content-api-wsit-190218082552 \
wpa-content-api-wuat-190218082634 \
WPA-Couchbase-UAT-01 \
WPA-Couchbase-UAT-02 \
WPA-Couchbase-UAT-03 \
wpa-couchbase-wdev-01 \
wpa-couchbase-wdev-02 \
wpa-couchbase-wdev-03 \
wpa-ctpm-product-api-wperf-190917071306 \
wpa-ctpm-product-api-wqa-190917071337 \
wpa-ctpm-product-api-wsit-190917071451 \
wpa-ctpm-product-api-wuat-190917071417 \
wpa-ctss-validation-service-wperf-190927124653 \
wpa-ctss-validation-service-wqa-190927124520 \
wpa-ctss-validation-service-wsit-190927124737 \
wpa-ctss-validation-service-wuat-190927124603 \
wpa-dboard-wdev-181029065239 \
wpa-dboard-wperf-181116080648 \
wpa-dboard-wqa-181029065443 \
wpa-dboard-wsit-181203041255 \
wpa-dboard-wuat-181109060857 \
wpa-packgraphapi-wdev-181031042058 \
wpa-packgraphapi-wsit-190814080833 \
wpa-prod-wdev-1805280706 \
wpa-prod-wperf-1803121237 \
wpa-prod-wqa-1808151044 \
wpa-prod-wsit-1810180627 \
wpa-prod-wuat-181109063416 \
wpa-production-service-j-wdev-190531033935 \
wpa-production-service-j-wperf-190531071739 \
wpa-production-service-j-wqa-190531054914 \
wpa-production-service-j-wsit-190531071354 \
wpa-production-service-j-wuat-190531060014 \
wpa-solr-wdev-190131042515 \
wpa-solr-wperf-190506044956 \
wpa-solr-wqa-190130040826 \
wpa-solr-wsit-190305084600 \
wpa-solr-wuat-190131044450 \
wpa-submi-wdev-181226013733 \
wpa-submi-wperf-181226014533 \
wpa-submi-wqa-181226014317 \
wpa-submi-wsit-181226014346 \
wpa-submi-wuat-181226015131 \
wpa-submission-svc-wperf-190312103121 \
wpa-submission-svc-wqa-190312102057 \
wpa-submission-svc-wsit-190418075452 \
wpa-submission-svc-wuat-190411043828 \
"

for i in $LIST; do
    echo $i
    aws servicecatalog update-provisioned-product \
    --provisioned-product-name $i \
    --region us-east-1 \
    --tags Key=AppID,Value=APP-5844 Key=AppName,Value=CMH Key=GroupOwner,Value="Vitaly Ageev"
sleep 0.5
done