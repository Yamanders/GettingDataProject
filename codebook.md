# Getting Data Project Codebook:
  Authored by Amanda Molling

The full list of variable (column) names found when reading in
agro_data.txt, using header = true parameter, is found at the bottom
of this file.
physical activity type group refers to the grouping by activity type, ie:
  Walking, Running, etc.

participant id signifies which participant out of the 30 the particular
average was done over.

Any variable name referring to time domain was taken in the time domain, whereas
frequency domain variables were processed through a fourier transform.
Any minus gravity variables were measured body values that were then reduced by
the value of gravity in the vertical direction.

Jerk values represent the 3rd derivative of position values using the velocity
 and acceleration values measured.

 All accelerometer value came from a three axis accelerometer and likewise
 gyroscope value came from a three axis gyroscope.

The magnitude terms is the Euclidian norm (ie sqrt (x^2 + y^2 + z^2 ) ), so
the vector direction of the 3 axis signal.

The frequency averages refer to means that are weighted for the researchers'
purposes:

For further information, you can also read the README.MD in the git repo or
the included README.txt within the data file.

The following variables can be found in the agro_data.txt file:

names(agro_data)
 [1] "physicalactivitytypegroup"
 [2] "participantid"
 [3] "timedomainbodyaccelerationmeanxaxis"
 [4] "timedomainbodyaccelerationmeanyaxis"
 [5] "timedomainbodyaccelerationmeanzaxis"
 [6] "timedomainbodyaccelerationstandarddeviationxaxis"
 [7] "timedomainbodyaccelerationstandarddeviationyaxis"
 [8] "timedomainbodyaccelerationstandarddeviationzaxis"
 [9] "timedomainminusgravityaccelerationmeanxaxis"
[10] "timedomainminusgravityaccelerationmeanyaxis"
[11] "timedomainminusgravityaccelerationmeanzaxis"
[12] "timedomainminusgravityaccelerationstandarddeviationxaxis"
[13] "timedomainminusgravityaccelerationstandarddeviationyaxis"
[14] "timedomainminusgravityaccelerationstandarddeviationzaxis"
[15] "timedomainbodyaccelerationjerkmeanxaxis"
[16] "timedomainbodyaccelerationjerkmeanyaxis"
[17] "timedomainbodyaccelerationjerkmeanzaxis"
[18] "timedomainbodyaccelerationjerkstandarddeviationxaxis"
[19] "timedomainbodyaccelerationjerkstandarddeviationyaxis"
[20] "timedomainbodyaccelerationjerkstandarddeviationzaxis"
[21] "timedomainbodygyroscopemeanxaxis"
[22] "timedomainbodygyroscopemeanyaxis"
[23] "timedomainbodygyroscopemeanzaxis"
[24] "timedomainbodygyroscopestandarddeviationxaxis"
[25] "timedomainbodygyroscopestandarddeviationyaxis"
[26] "timedomainbodygyroscopestandarddeviationzaxis"
[27] "timedomainbodygyroscopejerkmeanxaxis"
[28] "timedomainbodygyroscopejerkmeanyaxis"
[29] "timedomainbodygyroscopejerkmeanzaxis"
[30] "timedomainbodygyroscopejerkstandarddeviationxaxis"
[31] "timedomainbodygyroscopejerkstandarddeviationyaxis"
[32] "timedomainbodygyroscopejerkstandarddeviationzaxis"
[33] "timedomainbodyaccelerationmagnitudemean"
[34] "timedomainbodyaccelerationmagnitudestandarddeviation"
[35] "timedomainminusgravityaccelerationmagnitudemean"
[36] "timedomainminusgravityaccelerationmagnitudestandarddeviation"
[37] "timedomainbodyaccelerationjerkmagnitudemean"
[38] "timedomainbodyaccelerationjerkmagnitudestandarddeviation"
[39] "timedomainbodygyroscopemagnitudemean"
[40] "timedomainbodygyroscopemagnitudestandarddeviation"
[41] "timedomainbodygyroscopejerkmagnitudemean"
[42] "timedomainbodygyroscopejerkmagnitudestandarddeviation"
[43] "frequencydomainbodyaccelerationmeanxaxis"
[44] "frequencydomainbodyaccelerationmeanyaxis"
[45] "frequencydomainbodyaccelerationmeanzaxis"
[46] "frequencydomainbodyaccelerationstandarddeviationxaxis"
[47] "frequencydomainbodyaccelerationstandarddeviationyaxis"
[48] "frequencydomainbodyaccelerationstandarddeviationzaxis"
[49] "frequencydomainbodyaccelerationweightedfrequencyaveragexaxis"
[50] "frequencydomainbodyaccelerationweightedfrequencyaverageyaxis"
[51] "frequencydomainbodyaccelerationweightedfrequencyaveragezaxis"
[52] "frequencydomainbodyaccelerationjerkmeanxaxis"
[53] "frequencydomainbodyaccelerationjerkmeanyaxis"
[54] "frequencydomainbodyaccelerationjerkmeanzaxis"
[55] "frequencydomainbodyaccelerationjerkstandarddeviationxaxis"
[56] "frequencydomainbodyaccelerationjerkstandarddeviationyaxis"
[57] "frequencydomainbodyaccelerationjerkstandarddeviationzaxis"
[58] "frequencydomainbodyaccelerationjerkweightedfrequencyaveragexaxis"
[59] "frequencydomainbodyaccelerationjerkweightedfrequencyaverageyaxis"
[60] "frequencydomainbodyaccelerationjerkweightedfrequencyaveragezaxis"
[61] "frequencydomainbodygyroscopemeanxaxis"
[62] "frequencydomainbodygyroscopemeanyaxis"
[63] "frequencydomainbodygyroscopemeanzaxis"
[64] "frequencydomainbodygyroscopestandarddeviationxaxis"
[65] "frequencydomainbodygyroscopestandarddeviationyaxis"
[66] "frequencydomainbodygyroscopestandarddeviationzaxis"
[67] "frequencydomainbodygyroscopeweightedfrequencyaveragexaxis"
[68] "frequencydomainbodygyroscopeweightedfrequencyaverageyaxis"
[69] "frequencydomainbodygyroscopeweightedfrequencyaveragezaxis"
[70] "frequencydomainbodyaccelerationmagnitudemean"
[71] "frequencydomainbodyaccelerationmagnitudestandarddeviation"
[72] "frequencydomainbodyaccelerationmagnitudeweightedfrequencyaverage"
[73] "frequencydomainbodyaccelerationjerkmagnitudemean"
[74] "frequencydomainbodyaccelerationjerkmagnitudestandarddeviation"
[75] "frequencydomainbodyaccelerationjerkmagnitudeweightedfrequencyaverage"
[76] "frequencydomainbodygyroscopemagnitudemean"
[77] "frequencydomainbodygyroscopemagnitudestandarddeviation"
[78] "frequencydomainbodygyroscopemagnitudeweightedfrequencyaverage"
[79] "frequencydomainbodygyroscopejerkmagnitudemean"
