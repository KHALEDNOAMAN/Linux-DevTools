# Linux-DevTools
A comprehensive collection of scripts, makefiles, configurations, and cheatsheets for Linux developers.

## Overview
Collection of production-ready shell scripts for Linux development, monitoring, and deployment

## Features
Build automation, system monitoring, deployment helpers, Git hooks, CI configs, Makefiles

## Architecture
Organized by function: scripts, configs, monitoring, ci, git-hooks

## Tech Stack
Bash, Make, Docker, Git

## How It Works
Each script is standalone and well-documented with usage instructions in comments

## Installation
Clone and add to PATH: export PATH=$PATH:$(pwd)/scripts

## Usage
./scripts/deploy.sh production OR make build

## Project Structure
scripts/ (deploy, backup, monitor), configs/ (nginx, systemd), monitoring/, ci/, git-hooks/, makefiles/, cheatsheets/

## Screenshots
Example monitoring output

## Future
Ansible playbooks, Terraform modules, Kubernetes helpers