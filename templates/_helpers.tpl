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
Create a fully qualified devadminservice name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}

{{- define "apollo.devadminservice.fullname" -}}
{{- if .Values.devadminservice.fullnameOverride -}}
{{- .Values.devadminservice.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- printf "%s-%s" .Release.Name .Values.devadminservice.name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s-%s" .Release.Name $name .Values.devadminservice.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create a fully qualified fatadminservice name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}

{{- define "apollo.fatadminservice.fullname" -}}
{{- if .Values.fatadminservice.fullnameOverride -}}
{{- .Values.fatadminservice.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- printf "%s-%s" .Release.Name .Values.fatadminservice.name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s-%s" .Release.Name $name .Values.fatadminservice.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create a fully qualified uatadminservice name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}

{{- define "apollo.uatadminservice.fullname" -}}
{{- if .Values.uatadminservice.fullnameOverride -}}
{{- .Values.uatadminservice.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- printf "%s-%s" .Release.Name .Values.uatadminservice.name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s-%s" .Release.Name $name .Values.uatadminservice.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create a fully qualified proadminservice name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}

{{- define "apollo.proadminservice.fullname" -}}
{{- if .Values.proadminservice.fullnameOverride -}}
{{- .Values.proadminservice.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- printf "%s-%s" .Release.Name .Values.proadminservice.name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s-%s" .Release.Name $name .Values.proadminservice.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create a fully qualified devconfigservice name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}

{{- define "apollo.devconfigservice.fullname" -}}
{{- if .Values.devconfigservice.fullnameOverride -}}
{{- .Values.devconfigservice.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- printf "%s-%s" .Release.Name .Values.devconfigservice.name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s-%s" .Release.Name $name .Values.devconfigservice.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create a fully qualified fatconfigservice name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}

{{- define "apollo.fatconfigservice.fullname" -}}
{{- if .Values.fatconfigservice.fullnameOverride -}}
{{- .Values.fatconfigservice.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- printf "%s-%s" .Release.Name .Values.fatconfigservice.name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s-%s" .Release.Name $name .Values.fatconfigservice.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create a fully qualified uatconfigservice name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}

{{- define "apollo.uatconfigservice.fullname" -}}
{{- if .Values.uatconfigservice.fullnameOverride -}}
{{- .Values.uatconfigservice.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- printf "%s-%s" .Release.Name .Values.uatconfigservice.name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s-%s" .Release.Name $name .Values.uatconfigservice.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create a fully qualified proconfigservice name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}

{{- define "apollo.proconfigservice.fullname" -}}
{{- if .Values.proconfigservice.fullnameOverride -}}
{{- .Values.proconfigservice.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- printf "%s-%s" .Release.Name .Values.proconfigservice.name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s-%s" .Release.Name $name .Values.proconfigservice.name | trunc 63 | trimSuffix "-" -}}
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
Create the name of the service account to use for the devadminservice component
*/}}
{{- define "apollo.serviceAccountName.devadminservice" -}}
{{- if .Values.serviceAccounts.devadminservice.create -}}
    {{ default (include "apollo.devadminservice.fullname" .) .Values.serviceAccounts.devadminservice.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccounts.devadminservice.name }}
{{- end -}}
{{- end -}}

{{/*
Create the name of the service account to use for the fatadminservice component
*/}}
{{- define "apollo.serviceAccountName.fatadminservice" -}}
{{- if .Values.serviceAccounts.fatadminservice.create -}}
    {{ default (include "apollo.fatadminservice.fullname" .) .Values.serviceAccounts.fatadminservice.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccounts.fatadminservice.name }}
{{- end -}}
{{- end -}}

{{/*
Create the name of the service account to use for the uatadminservice component
*/}}
{{- define "apollo.serviceAccountName.uatadminservice" -}}
{{- if .Values.serviceAccounts.uatadminservice.create -}}
    {{ default (include "apollo.uatadminservice.fullname" .) .Values.serviceAccounts.uatadminservice.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccounts.uatadminservice.name }}
{{- end -}}
{{- end -}}

{{/*
Create the name of the service account to use for the proadminservice component
*/}}
{{- define "apollo.serviceAccountName.proadminservice" -}}
{{- if .Values.serviceAccounts.proadminservice.create -}}
    {{ default (include "apollo.proadminservice.fullname" .) .Values.serviceAccounts.proadminservice.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccounts.proadminservice.name }}
{{- end -}}
{{- end -}}

{{/*
Create the name of the service account to use for the devconfigservice component
*/}}
{{- define "apollo.serviceAccountName.devconfigservice" -}}
{{- if .Values.serviceAccounts.devconfigservice.create -}}
    {{ default (include "apollo.devconfigservice.fullname" .) .Values.serviceAccounts.devconfigservice.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccounts.devconfigservice.name }}
{{- end -}}
{{- end -}}

{{/*
Create the name of the service account to use for the fatconfigservice component
*/}}
{{- define "apollo.serviceAccountName.fatconfigservice" -}}
{{- if .Values.serviceAccounts.fatconfigservice.create -}}
    {{ default (include "apollo.fatconfigservice.fullname" .) .Values.serviceAccounts.fatconfigservice.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccounts.fatconfigservice.name }}
{{- end -}}
{{- end -}}

{{/*
Create the name of the service account to use for the uatconfigservice component
*/}}
{{- define "apollo.serviceAccountName.uatconfigservice" -}}
{{- if .Values.serviceAccounts.uatconfigservice.create -}}
    {{ default (include "apollo.uatconfigservice.fullname" .) .Values.serviceAccounts.uatconfigservice.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccounts.uatconfigservice.name }}
{{- end -}}
{{- end -}}

{{/*
Create the name of the service account to use for the proconfigservice component
*/}}
{{- define "apollo.serviceAccountName.proconfigservice" -}}
{{- if .Values.serviceAccounts.proconfigservice.create -}}
    {{ default (include "apollo.proconfigservice.fullname" .) .Values.serviceAccounts.proconfigservice.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccounts.proconfigservice.name }}
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
