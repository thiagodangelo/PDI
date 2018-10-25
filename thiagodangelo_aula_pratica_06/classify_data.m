clear all;
close all;
clc;

% Exercícios 5 e 6
load('data.mat');

[train, test] = amostra(labels, 0.5);

train_data = features(train, :);
train_label = labels(train, :);

test_data = features(test, :);
test_label = labels(test, :);

predict = classify(test_data, train_data, train_label);

n_test = length(test_label);
hits = predict == test_label;
mean_hit = sum(hits) / n_test

classes = unique(labels)';

class_gt = sum(test_label == classes);
class_tp = sum(test_label(hits) == classes);
class_tp_and_fp = sum(predict == classes);

class_recall = class_tp ./ class_gt
avg_recall = mean(class_recall)

class_precision = class_tp ./ class_tp_and_fp
avg_precision = mean(class_precision)
