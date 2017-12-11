import fastcluster.fastcluster as fc
import time
import numpy as np

if __name__ == '__main__':
    #Extract Features
    duration = time.time()
    features = np.load('../data/features/features.npy')
    #labels = np.load('../data/features/labels.npy')
    duration = time.time() - duration
    print 'Extracting Features take', duration, 'seconds'

    #K-Means
    K = int(features.shape[0]) / 100

    print 'Number of Features', features.shape[0]
    print 'Number of Visual Words', K

    duration = time.time()
    fc.findCluster(features, K, 100)
    duration = time.time() - duration

    print 'K-Means takes', duration, 'seconds'

