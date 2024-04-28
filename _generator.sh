#!/usr/bin/env bash

# Define usage function
usage() {
  echo "Usage: $0 [-post post-name -date yyyy-mm-dd [-dir directory]] | [-page page-name] | [-tags tag1 tag2 ...] | [-categories cat1 cat2 ...]" 1>&2
  exit 1
}

# Function to copy template to specified location
copy_template() {
  cp "_templates/$1" "$2"
}

set_frontmatter() {
  sed -i "s/$1\:.*/$1: $2/g" "$3"
}

gen_datetime() {
  echo "$(date +'%Y-%m-%d %H:%M:%S %z')"
}

gen_date() {
  echo "$(date +'%Y-%m-%d')"
}

# Parse arguments
while [[ "$#" -gt 0 ]]; do
  case $1 in
    -post)
      post_name="$2"
      shift
      ;;
    -date)
      date="$2"
      shift
      ;;
    -dir)
      directory="$2"
      shift
      ;;
    -page)
      page_name="$2"
      shift
      ;;
    -tags)
      tags=("${@:2}")
      shift $#
      ;;
    -categories)
      categories=("${@:2}")
      shift $#
      ;;
    *)
      usage
      ;;
  esac
  shift
done

# Check if post option is provided
if [[ -n "$post_name" ]]; then
  if [[ -n "$directory" ]]; then
    post_dir="_posts/$directory"
  else
    post_dir="_posts"
  fi
  if [[ -z "$date" ]]; then
    date=$(gen_date)
  fi
  datetime=$(gen_datetime)
  mkdir -p "$post_dir"
  new_file="$post_dir/$date-$post_name.md"
  copy_template "_posttemplate.md" "$new_file"
  set_frontmatter "title" "$post_name" "$new_file"
  set_frontmatter "date" "$datetime" "$new_file"
elif [[ -n "$page_name" ]]; then
  new_file="$page_name.md"
  copy_template "_pagetemplate.md" $new_file
elif [[ ${#tags[@]} -gt 0 ]]; then
  for tag in "${tags[@]}"; do
    new_file="tags/$tag.md"
    copy_template "_tagtemplate.md" $new_file
    set_frontmatter "tag" "$tag" "$new_file"
  done
elif [[ ${#categories[@]} -gt 0 ]]; then
  for cat in "${categories[@]}"; do
    new_file="categories/$cat.md"
    copy_template "_categorytemplate.md" $new_file
    set_frontmatter "category" "$cat" "$new_file"
  done
else
  usage
fi

