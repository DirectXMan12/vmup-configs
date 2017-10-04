#!/bin/sh

/root/oc adm policy add-cluster-role-to-user cluster-reader -n openshift-infra system:serviceaccount:openshift-infra:heapster

/root/oc create -f ./heapster-sa.yaml -n openshift-infra
/root/oc create -f ./heapster-svc.yaml -n openshift-infra
/root/oc create -f ./heapster-rc.yaml -n openshift-infra
