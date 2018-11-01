{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "apollo-helm.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "apollo-helm.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "apollo-helm.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a fully qualified adminservice name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}

{{- define "apollo.adminservice.fullname" -}}
{{- if .Values.adminservice.fullnameOverride -}}
{{- .Values.adminservice.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- printf "%s-%s" .Release.Name .Values.adminservice.name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s-%s" .Release.Name $name .Values.adminservice.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create a fully qualified configservice name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}

{{- define "apollo.configservice.fullname" -}}
{{- if .Values.configservice.fullnameOverride -}}
{{- .Values.configservice.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- printf "%s-%s" .Release.Name .Values.configservice.name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s-%s" .Release.Name $name .Values.configservice.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create a fully qualified portal name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}

{{- define "apollo.portal.fullname" -}}
{{- if .Values.portal.fullnameOverride -}}
{{- .Values.portal.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- printf "%s-%s" .Release.Name .Values.portal.name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s-%s" .Release.Name $name .Values.portal.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create the name of the service account to use for the adminservice component
*/}}
{{- define "apollo.serviceAccountName.adminservice" -}}
{{- if .Values.serviceAccounts.adminservice.create -}}
    {{ default (include "apollo.adminservice.fullname" .) .Values.serviceAccounts.adminservice.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccounts.adminservice.name }}
{{- end -}}
{{- end -}}

{{/*
Create the name of the service account to use for the configservice component
*/}}
{{- define "apollo.serviceAccountName.configservice" -}}
{{- if .Values.serviceAccounts.configservice.create -}}
    {{ default (include "apollo.configservice.fullname" .) .Values.serviceAccounts.configservice.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccounts.configservice.name }}
{{- end -}}
{{- end -}}

{{/*
Create the name of the service account to use for the portal component
*/}}
{{- define "apollo.serviceAccountName.portal" -}}
{{- if .Values.serviceAccounts.portal.create -}}
    {{ default (include "apollo.portal.fullname" .) .Values.serviceAccounts.portal.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccounts.portal.name }}
{{- end -}}
{{- end -}}

{{/*
Create a default fully qualified portal mysql name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "apollo.portal.mysql.fullname" -}}
{{- $name := default "portalmysql" .Values "portalmysql.nameOverride" -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified configservice mysql name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "apollo.configservice.mysql.fullname" -}}
{{- $name := default "configservicemysql" .Values "configservicemysql.nameOverride" -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
