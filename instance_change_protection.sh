
# dont forget to auth  - aws-okta exec non-prod -- zsh

LIST="\
i-0137cea874ed75020 \
i-0158b575e309221e3 \
i-024b608aacc63dc2f \
"

for i in $LIST; do
    echo $i
    aws ec2 modify-instance-attribute \
    --instance-id $i \
    --disable-api-termination
sleep 1
done


#aws cli 


