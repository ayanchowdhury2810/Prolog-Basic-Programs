import numpy as np
import pandas as pd
import matplotlib
from matplotlib import pyplot as plt
from sklearn.datasets import make_blobs
from sklearn.cluster import KMeans

data = [[5, 1], [6, 1], [7, 3], [8,4]] 
df = pd.DataFrame(data, columns = ['Weight Index', 'pH']) 
x = df.iloc[:, [0,1]].values

plt.scatter(x[:,0], x[:,1])
#plt.scatter(x[0], x[1], c='red', s=200, alpha=1)

startpts=np.array([[1,1],[2,1]])

#########change max_iter to 1,2,3 to tally the results.

centroids= KMeans(n_clusters=2, init=startpts, n_init=1, max_iter = 3)
centroids.fit(x)

plt.scatter(x[:, 0], x[:, 1], cmap='viridis')
#get the array
centroids_array=centroids.cluster_centers_
print(centroids_array)

#plt.scatter(x[:,0], x[:,1])
plt.scatter(centroids_array[:, 0],centroids_array[:, 1], c='red', s=200, alpha=1);
