#! /bin/bash
antsRegistrationSyNQuick.sh -d 3 -f atlas-T1w.nii.gz -m corrected-T1w.nii.gz -o corrected_to_atlas_ -n 4
antsApplyTransforms -d 3 -i atlas-integer-labels.nii.gz -r corrected-T1w.nii.gz -o label_to_corrected.nii.gz -t [corrected_to_atlas_0GenericAffine.mat, 1] -t corrected_to_atlas_1InverseWarp.nii.gz -n NearestNeighbor
