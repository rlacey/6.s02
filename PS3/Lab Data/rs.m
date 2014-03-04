function RS = rs(original, filtered)
SOD_original = diff(original,2);
SSSOD_original = sum(SOD_original.^2);

SOD_filtered = diff(filtered,2);
SSSOD_filtered = sum(SOD_filtered.^2);

RS = (SSSOD_original-SSSOD_filtered)/SSSOD_original;
end