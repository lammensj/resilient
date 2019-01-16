<?php

/**
 * @file
 * The Resilient profile.
 */

declare(strict_types = 1);

use Drupal\user\Entity\User;

/**
 * Implements hook_install_tasks().
 */
function resilient_install_tasks() {
  $tasks = [];

  $tasks['resilient_prepare_administrator'] = [];

  return $tasks;
}

/**
 * Assign user 1 the "administrator" role.
 */
function resilient_prepare_administrator() {
  /** @var \Drupal\user\Entity\User $user */
  $user = User::load(1);
  $user->roles[] = 'administrator';
  $user->save();
}
