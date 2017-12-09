import cv2
import numpy as np
import random
import time

THRESHOLD = 10

SIFT = cv2.xfeatures2d.SIFT_create()

def computeFeatures(imagePath):
    duration = time.time()
    img = cv2.imread(imagePath)
    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    keypoints, descriptors = SIFT.detectAndCompute(gray, None)
    duration = time.time() - duration
    print 'Finish Compute SIFT Descriptors for', imagePath, 'Time', duration, 'seconds'
    return descriptors

def findMinPoint(point, centroids):
    idx = 0
    minDist = np.inner(point - centroids[0], point - centroids[0])
    N = centroids.shape[0]
    for i in xrange(1, N):
        v = point = centroids[i]
        dist = np.inner(v, v)
        if (dist < minDist):
            dist = minDist
            idx = i
    return idx

def cluster(points, centroids):
    N = points.shape[0]
    index = np.zeros((N))
    for i in xrange(N):
        idx = findMinPoint(points[i], centroids)
        index[i] = idx
    return index

def computeNewCentroids(points, centroids):
    index = cluster(points, centroids)
    K = len(centroids.shape[0])
    newCentroids = np.zeros(centroids.shape)
    for i in xrange(K):
        newCentroids[i] = np.mean(points[index == i], axis=0)
    return newCentroids

def findClusterring(K, points):
    lenFeatures = points.shape[1]
    N = points.shape[0]
    index = random.sample(np.argange(N))
    centroids = np.zeros((K, lenFeatures))
    for i in xrange(K):
        centroids[i] = points[index[i]].copy()

    while (True):
        newCentroids = computeNewCentroids(points, centroids)
        v = newCentroids - centroids
        error = np.inner(v, v) / K
        if (error <= THRESHOLD):
            break
        centroids = newCentroids
    return centroids

def featuresExtracting(filePath):
    file = open(filePath, 'r')
    features = []
    labels = []
    for line in file:
        imagePath = 'oxbuild_images/' + line[:-1]
        labels.append(line[:-5])
        feats = computeFeatures(imagePath)
        for feat in feats:
            #norm = np.sqrt(np.inner(feat, feat))
            features.append(feat)
    features = np.array(features)
    return features, labels

