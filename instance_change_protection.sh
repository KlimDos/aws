
# dont forget to auth  - aws-okta exec non-prod -- zsh

LIST="\
i-0137cea874ed75020 \
i-0158b575e309221e3 \
i-024b608aacc63dc2f \
i-0372ae5918c82cb94 \
i-04276add77b2df806 \
i-05919151f0d29830a \
i-06faae8a3b5d19acf \
i-073be91e4b2377b94 \
i-08b1b3050d9533a12 \
i-08b9c865142c0d08e \
i-091bb1492aacc27d9 \
i-095fcbc086e17ac4f \
i-0b0dd90eb68c21c71 \
i-0c3b08fd0f0d983cd \
i-0cad66f5cf935e7ea \
i-0dff4dd0572c83a2e \
i-0e5e31cf4c8ea6005 \
i-0f7076f8cb5383e57 \
"

for i in $LIST; do
    echo $i
    aws ec2 modify-instance-attribute \
    --instance-id $i \
    --disable-api-termination
sleep 0.5
done

for i in $LIST; do
    echo $i
    aws ec2 stop-instances \
    --instance-ids $i
sleep 0.5
done



