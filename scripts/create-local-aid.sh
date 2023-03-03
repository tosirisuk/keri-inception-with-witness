#!/bin/bash

kli init --name "${NAME}" --base "${BASE_DIR}/keri"  --salt "${SALT}" --nopasscode --config-dir ${KERI_SCRIPT_DIR} --config-file oobi.json
kli incept --name "${NAME}" --base "${BASE_DIR}/keri" --alias "${NAME}" --file ${KERI_SCRIPT_DIR}/qar-local-config.json
kli status --name "${NAME}"  --alias "${NAME}" 
