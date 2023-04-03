// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `en`
  String get language {
    return Intl.message(
      'en',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createaccount {
    return Intl.message(
      'Create Account',
      name: 'createaccount',
      desc: '',
      args: [],
    );
  }

  /// `Welcome!`
  String get welcome {
    return Intl.message(
      'Welcome!',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `E-mail address`
  String get emailhint {
    return Intl.message(
      'E-mail address',
      name: 'emailhint',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get passwordhint {
    return Intl.message(
      'Password',
      name: 'passwordhint',
      desc: '',
      args: [],
    );
  }

  /// `Repeat password`
  String get passwordhintrepeat {
    return Intl.message(
      'Repeat password',
      name: 'passwordhintrepeat',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get signin {
    return Intl.message(
      'Sign in',
      name: 'signin',
      desc: '',
      args: [],
    );
  }

  /// `Don't have account?  `
  String get donthaveacc {
    return Intl.message(
      'Don\'t have account?  ',
      name: 'donthaveacc',
      desc: '',
      args: [],
    );
  }

  /// `Have account?  `
  String get have_acc {
    return Intl.message(
      'Have account?  ',
      name: 'have_acc',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signup {
    return Intl.message(
      'Sign up',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `or...`
  String get or {
    return Intl.message(
      'or...',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Continue with google`
  String get continue_with_google {
    return Intl.message(
      'Continue with google',
      name: 'continue_with_google',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Lessons`
  String get lessons {
    return Intl.message(
      'Lessons',
      name: 'lessons',
      desc: '',
      args: [],
    );
  }

  /// `Messages`
  String get messages {
    return Intl.message(
      'Messages',
      name: 'messages',
      desc: '',
      args: [],
    );
  }

  /// `Offer`
  String get offer {
    return Intl.message(
      'Offer',
      name: 'offer',
      desc: '',
      args: [],
    );
  }

  /// `Your account is created!`
  String get singupSuccessed {
    return Intl.message(
      'Your account is created!',
      name: 'singupSuccessed',
      desc: '',
      args: [],
    );
  }

  /// `Error appeared during signin up :(`
  String get signupFailed {
    return Intl.message(
      'Error appeared during signin up :(',
      name: 'signupFailed',
      desc: '',
      args: [],
    );
  }

  /// `This field cannot be empty`
  String get empty_string_value {
    return Intl.message(
      'This field cannot be empty',
      name: 'empty_string_value',
      desc: '',
      args: [],
    );
  }

  /// `Passwords must be the same`
  String get wrong_repeated_password {
    return Intl.message(
      'Passwords must be the same',
      name: 'wrong_repeated_password',
      desc: '',
      args: [],
    );
  }

  /// `Finish account configuration`
  String get finish_configuration {
    return Intl.message(
      'Finish account configuration',
      name: 'finish_configuration',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Surname`
  String get surname {
    return Intl.message(
      'Surname',
      name: 'surname',
      desc: '',
      args: [],
    );
  }

  /// `Add your avatar`
  String get add_avatar {
    return Intl.message(
      'Add your avatar',
      name: 'add_avatar',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Birth date`
  String get birthdate {
    return Intl.message(
      'Birth date',
      name: 'birthdate',
      desc: '',
      args: [],
    );
  }

  /// `Your data has been updated!`
  String get successful_update {
    return Intl.message(
      'Your data has been updated!',
      name: 'successful_update',
      desc: '',
      args: [],
    );
  }

  /// `Check our offer!`
  String get see_offer {
    return Intl.message(
      'Check our offer!',
      name: 'see_offer',
      desc: '',
      args: [],
    );
  }

  /// `Your courses`
  String get your_courses {
    return Intl.message(
      'Your courses',
      name: 'your_courses',
      desc: '',
      args: [],
    );
  }

  /// `Your rides`
  String get your_rides {
    return Intl.message(
      'Your rides',
      name: 'your_rides',
      desc: '',
      args: [],
    );
  }

  /// `Enroll in the course`
  String get enroll_course {
    return Intl.message(
      'Enroll in the course',
      name: 'enroll_course',
      desc: '',
      args: [],
    );
  }

  /// `Our offer`
  String get our_offer {
    return Intl.message(
      'Our offer',
      name: 'our_offer',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get categorie {
    return Intl.message(
      'Category',
      name: 'categorie',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get price {
    return Intl.message(
      'Price',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `Duration`
  String get duration {
    return Intl.message(
      'Duration',
      name: 'duration',
      desc: '',
      args: [],
    );
  }

  /// `Minimum age`
  String get min_age {
    return Intl.message(
      'Minimum age',
      name: 'min_age',
      desc: '',
      args: [],
    );
  }

  /// `I want to enroll`
  String get want_to_enroll {
    return Intl.message(
      'I want to enroll',
      name: 'want_to_enroll',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to enroll to the course for categorie {category}?`
  String confirm_course_dialog(Object category) {
    return Intl.message(
      'Are you sure you want to enroll to the course for categorie $category?',
      name: 'confirm_course_dialog',
      desc: '',
      args: [category],
    );
  }

  /// `You have been enrolled! Wait for confirmation`
  String get enroll_succeed {
    return Intl.message(
      'You have been enrolled! Wait for confirmation',
      name: 'enroll_succeed',
      desc: '',
      args: [],
    );
  }

  /// `Sorry we couldn't enroll you, try again`
  String get enroll_failure {
    return Intl.message(
      'Sorry we couldn\'t enroll you, try again',
      name: 'enroll_failure',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get try_again {
    return Intl.message(
      'Try again',
      name: 'try_again',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `You have already enrolled to that course!`
  String get already_enrolled {
    return Intl.message(
      'You have already enrolled to that course!',
      name: 'already_enrolled',
      desc: '',
      args: [],
    );
  }

  /// `You didn't enroll on any course yet`
  String get didnt_enroll_yet {
    return Intl.message(
      'You didn\'t enroll on any course yet',
      name: 'didnt_enroll_yet',
      desc: '',
      args: [],
    );
  }

  /// `Waiting for confirmation`
  String get wait_for_confirmation {
    return Intl.message(
      'Waiting for confirmation',
      name: 'wait_for_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Confirmed, go to lessons to plan your lessons`
  String get confirmed_go_to_lessons {
    return Intl.message(
      'Confirmed, go to lessons to plan your lessons',
      name: 'confirmed_go_to_lessons',
      desc: '',
      args: [],
    );
  }

  /// `Choose student`
  String get choose_student {
    return Intl.message(
      'Choose student',
      name: 'choose_student',
      desc: '',
      args: [],
    );
  }

  /// `Date of enroll`
  String get date_of_enroll {
    return Intl.message(
      'Date of enroll',
      name: 'date_of_enroll',
      desc: '',
      args: [],
    );
  }

  /// `You've taken course!`
  String get student_taken {
    return Intl.message(
      'You\'ve taken course!',
      name: 'student_taken',
      desc: '',
      args: [],
    );
  }

  /// `Resign`
  String get resign {
    return Intl.message(
      'Resign',
      name: 'resign',
      desc: '',
      args: [],
    );
  }

  /// `Sorry, we couldn't load lessons`
  String get couldnt_load_lessons {
    return Intl.message(
      'Sorry, we couldn\'t load lessons',
      name: 'couldnt_load_lessons',
      desc: '',
      args: [],
    );
  }

  /// `You don't have lessons this day`
  String get dont_have_lessons_this_day {
    return Intl.message(
      'You don\'t have lessons this day',
      name: 'dont_have_lessons_this_day',
      desc: '',
      args: [],
    );
  }

  /// `You did not have any lesson this day`
  String get didnt_have_lessons_this_day {
    return Intl.message(
      'You did not have any lesson this day',
      name: 'didnt_have_lessons_this_day',
      desc: '',
      args: [],
    );
  }

  /// `Plan a lesson`
  String get plan_lesson {
    return Intl.message(
      'Plan a lesson',
      name: 'plan_lesson',
      desc: '',
      args: [],
    );
  }

  /// `You haven't enroll to any course yet!`
  String get didnt_enroll_to_any_course {
    return Intl.message(
      'You haven\'t enroll to any course yet!',
      name: 'didnt_enroll_to_any_course',
      desc: '',
      args: [],
    );
  }

  /// `Plan lesson on`
  String get plan_lesson_on {
    return Intl.message(
      'Plan lesson on',
      name: 'plan_lesson_on',
      desc: '',
      args: [],
    );
  }

  /// `Choose start hour`
  String get choose_start_hour {
    return Intl.message(
      'Choose start hour',
      name: 'choose_start_hour',
      desc: '',
      args: [],
    );
  }

  /// `Choose end hour`
  String get choose_end_hour {
    return Intl.message(
      'Choose end hour',
      name: 'choose_end_hour',
      desc: '',
      args: [],
    );
  }

  /// `Your tutor`
  String get your_tutor {
    return Intl.message(
      'Your tutor',
      name: 'your_tutor',
      desc: '',
      args: [],
    );
  }

  /// `Selected day`
  String get selected_day {
    return Intl.message(
      'Selected day',
      name: 'selected_day',
      desc: '',
      args: [],
    );
  }

  /// `Driving hours`
  String get driving_hours {
    return Intl.message(
      'Driving hours',
      name: 'driving_hours',
      desc: '',
      args: [],
    );
  }

  /// `Waiting for confirmation from instructor`
  String get wait_for_confirmation_from_instructor {
    return Intl.message(
      'Waiting for confirmation from instructor',
      name: 'wait_for_confirmation_from_instructor',
      desc: '',
      args: [],
    );
  }

  /// `Confirmed by instructor`
  String get confirmed_by_instr {
    return Intl.message(
      'Confirmed by instructor',
      name: 'confirmed_by_instr',
      desc: '',
      args: [],
    );
  }

  /// `Took place`
  String get has_took_place {
    return Intl.message(
      'Took place',
      name: 'has_took_place',
      desc: '',
      args: [],
    );
  }

  /// `Have not took place`
  String get hasnt_took_place {
    return Intl.message(
      'Have not took place',
      name: 'hasnt_took_place',
      desc: '',
      args: [],
    );
  }

  /// `Send message`
  String get send_message {
    return Intl.message(
      'Send message',
      name: 'send_message',
      desc: '',
      args: [],
    );
  }

  /// `Promotion`
  String get promotion {
    return Intl.message(
      'Promotion',
      name: 'promotion',
      desc: '',
      args: [],
    );
  }

  /// `Start lesson`
  String get start_lesson {
    return Intl.message(
      'Start lesson',
      name: 'start_lesson',
      desc: '',
      args: [],
    );
  }

  /// `Cancel lesson`
  String get cancel_lesson {
    return Intl.message(
      'Cancel lesson',
      name: 'cancel_lesson',
      desc: '',
      args: [],
    );
  }

  /// `Modify lesson`
  String get modify_lesson {
    return Intl.message(
      'Modify lesson',
      name: 'modify_lesson',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Cars`
  String get cars {
    return Intl.message(
      'Cars',
      name: 'cars',
      desc: '',
      args: [],
    );
  }

  /// `Trainees`
  String get trainees {
    return Intl.message(
      'Trainees',
      name: 'trainees',
      desc: '',
      args: [],
    );
  }

  /// `Account manager`
  String get acc_manager {
    return Intl.message(
      'Account manager',
      name: 'acc_manager',
      desc: '',
      args: [],
    );
  }

  /// `Trainee preview`
  String get trainees_preview {
    return Intl.message(
      'Trainee preview',
      name: 'trainees_preview',
      desc: '',
      args: [],
    );
  }

  /// `Instructors preview`
  String get instructors_preview {
    return Intl.message(
      'Instructors preview',
      name: 'instructors_preview',
      desc: '',
      args: [],
    );
  }

  /// `Information about users`
  String get users_info {
    return Intl.message(
      'Information about users',
      name: 'users_info',
      desc: '',
      args: [],
    );
  }

  /// `Add car`
  String get add_car {
    return Intl.message(
      'Add car',
      name: 'add_car',
      desc: '',
      args: [],
    );
  }

  /// `Manage car`
  String get manage_car {
    return Intl.message(
      'Manage car',
      name: 'manage_car',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Pucharse date`
  String get pucharse_date {
    return Intl.message(
      'Pucharse date',
      name: 'pucharse_date',
      desc: '',
      args: [],
    );
  }

  /// `Last review`
  String get last_review {
    return Intl.message(
      'Last review',
      name: 'last_review',
      desc: '',
      args: [],
    );
  }

  /// `Last oil change`
  String get last_oil_change {
    return Intl.message(
      'Last oil change',
      name: 'last_oil_change',
      desc: '',
      args: [],
    );
  }

  /// `KM done`
  String get km_done {
    return Intl.message(
      'KM done',
      name: 'km_done',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to remove car`
  String get do_you_want_remove_car {
    return Intl.message(
      'Do you want to remove car',
      name: 'do_you_want_remove_car',
      desc: '',
      args: [],
    );
  }

  /// `You don't have any contacts`
  String get dont_have_any_contacts {
    return Intl.message(
      'You don\'t have any contacts',
      name: 'dont_have_any_contacts',
      desc: '',
      args: [],
    );
  }

  /// `Search contacts`
  String get search_contacts {
    return Intl.message(
      'Search contacts',
      name: 'search_contacts',
      desc: '',
      args: [],
    );
  }

  /// `Search by surname`
  String get search_by_surname {
    return Intl.message(
      'Search by surname',
      name: 'search_by_surname',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `No users found`
  String get no_users_found {
    return Intl.message(
      'No users found',
      name: 'no_users_found',
      desc: '',
      args: [],
    );
  }

  /// `Instructor`
  String get tutor {
    return Intl.message(
      'Instructor',
      name: 'tutor',
      desc: '',
      args: [],
    );
  }

  /// `Apprentice`
  String get apprentice {
    return Intl.message(
      'Apprentice',
      name: 'apprentice',
      desc: '',
      args: [],
    );
  }

  /// `Owner`
  String get owner {
    return Intl.message(
      'Owner',
      name: 'owner',
      desc: '',
      args: [],
    );
  }

  /// `Contact added succesfully`
  String get add_contact_succed {
    return Intl.message(
      'Contact added succesfully',
      name: 'add_contact_succed',
      desc: '',
      args: [],
    );
  }

  /// `Create instructor account`
  String get create_instructor_account {
    return Intl.message(
      'Create instructor account',
      name: 'create_instructor_account',
      desc: '',
      args: [],
    );
  }

  /// `On going courses`
  String get live_courses {
    return Intl.message(
      'On going courses',
      name: 'live_courses',
      desc: '',
      args: [],
    );
  }

  /// `Add course`
  String get add_course {
    return Intl.message(
      'Add course',
      name: 'add_course',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get category {
    return Intl.message(
      'Category',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `Required age`
  String get required_age {
    return Intl.message(
      'Required age',
      name: 'required_age',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Failed to add course try again`
  String get adding_course_failed {
    return Intl.message(
      'Failed to add course try again',
      name: 'adding_course_failed',
      desc: '',
      args: [],
    );
  }

  /// `Adding course succed`
  String get adding_succed {
    return Intl.message(
      'Adding course succed',
      name: 'adding_succed',
      desc: '',
      args: [],
    );
  }

  /// `Failed to modify course try again`
  String get modify_course_failed {
    return Intl.message(
      'Failed to modify course try again',
      name: 'modify_course_failed',
      desc: '',
      args: [],
    );
  }

  /// `Modifying course succed`
  String get modify_succed {
    return Intl.message(
      'Modifying course succed',
      name: 'modify_succed',
      desc: '',
      args: [],
    );
  }

  /// `Modify`
  String get modify {
    return Intl.message(
      'Modify',
      name: 'modify',
      desc: '',
      args: [],
    );
  }

  /// `Course is available`
  String get course_is_available {
    return Intl.message(
      'Course is available',
      name: 'course_is_available',
      desc: '',
      args: [],
    );
  }

  /// `Course isn't available`
  String get course_is_not_available {
    return Intl.message(
      'Course isn\'t available',
      name: 'course_is_not_available',
      desc: '',
      args: [],
    );
  }

  /// `Change availability of course`
  String get change_availability_of_course {
    return Intl.message(
      'Change availability of course',
      name: 'change_availability_of_course',
      desc: '',
      args: [],
    );
  }

  /// `Trainee`
  String get trainee {
    return Intl.message(
      'Trainee',
      name: 'trainee',
      desc: '',
      args: [],
    );
  }

  /// `Hours`
  String get hours {
    return Intl.message(
      'Hours',
      name: 'hours',
      desc: '',
      args: [],
    );
  }

  /// `Closest lesson`
  String get closest_lesson {
    return Intl.message(
      'Closest lesson',
      name: 'closest_lesson',
      desc: '',
      args: [],
    );
  }

  /// `End lesson`
  String get end_lesson {
    return Intl.message(
      'End lesson',
      name: 'end_lesson',
      desc: '',
      args: [],
    );
  }

  /// `Lesson has took place`
  String get lesson_has_took_place {
    return Intl.message(
      'Lesson has took place',
      name: 'lesson_has_took_place',
      desc: '',
      args: [],
    );
  }

  /// `Lesson has started`
  String get lesson_started {
    return Intl.message(
      'Lesson has started',
      name: 'lesson_started',
      desc: '',
      args: [],
    );
  }

  /// `Lesson ended with`
  String get lesson_ended_with {
    return Intl.message(
      'Lesson ended with',
      name: 'lesson_ended_with',
      desc: '',
      args: [],
    );
  }

  /// `Start lesson with`
  String get start_lesson_with {
    return Intl.message(
      'Start lesson with',
      name: 'start_lesson_with',
      desc: '',
      args: [],
    );
  }

  /// `Lesson started at`
  String get lesson_started_at {
    return Intl.message(
      'Lesson started at',
      name: 'lesson_started_at',
      desc: '',
      args: [],
    );
  }

  /// `Lesson ended at`
  String get lesson_ended_at {
    return Intl.message(
      'Lesson ended at',
      name: 'lesson_ended_at',
      desc: '',
      args: [],
    );
  }

  /// `No lessons were planned for this day with {userName}, do you want to plan it?`
  String no_lesson_planned_with(String userName) {
    return Intl.message(
      'No lessons were planned for this day with $userName, do you want to plan it?',
      name: 'no_lesson_planned_with',
      desc: '',
      args: [userName],
    );
  }

  /// `Drive tracking is live...`
  String get tracking_is_live {
    return Intl.message(
      'Drive tracking is live...',
      name: 'tracking_is_live',
      desc: '',
      args: [],
    );
  }

  /// `No live lessons`
  String get no_live_lessons {
    return Intl.message(
      'No live lessons',
      name: 'no_live_lessons',
      desc: '',
      args: [],
    );
  }

  /// `Promotions`
  String get promotions {
    return Intl.message(
      'Promotions',
      name: 'promotions',
      desc: '',
      args: [],
    );
  }

  /// `Account was created successfully`
  String get account_created_successfully {
    return Intl.message(
      'Account was created successfully',
      name: 'account_created_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Error occured, couldn't create account`
  String get error_couldnt_create_acc {
    return Intl.message(
      'Error occured, couldn\'t create account',
      name: 'error_couldnt_create_acc',
      desc: '',
      args: [],
    );
  }

  /// `No users to show`
  String get no_users {
    return Intl.message(
      'No users to show',
      name: 'no_users',
      desc: '',
      args: [],
    );
  }

  /// `Wrong credentials`
  String get wrong_credentials {
    return Intl.message(
      'Wrong credentials',
      name: 'wrong_credentials',
      desc: '',
      args: [],
    );
  }

  /// `This account does not exist`
  String get account_doesnt_exist {
    return Intl.message(
      'This account does not exist',
      name: 'account_doesnt_exist',
      desc: '',
      args: [],
    );
  }

  /// `Unexpected error during fetching user course data`
  String get error_during_getting_user_course_data {
    return Intl.message(
      'Unexpected error during fetching user course data',
      name: 'error_during_getting_user_course_data',
      desc: '',
      args: [],
    );
  }

  /// `User did not enroll to any course`
  String get user_didnt_enroll_to_any_course {
    return Intl.message(
      'User did not enroll to any course',
      name: 'user_didnt_enroll_to_any_course',
      desc: '',
      args: [],
    );
  }

  /// `Instructor do not drive any course`
  String get tutor_dont_run_any_course {
    return Intl.message(
      'Instructor do not drive any course',
      name: 'tutor_dont_run_any_course',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Sign out`
  String get signout {
    return Intl.message(
      'Sign out',
      name: 'signout',
      desc: '',
      args: [],
    );
  }

  /// `Manage courses`
  String get manage_courses {
    return Intl.message(
      'Manage courses',
      name: 'manage_courses',
      desc: '',
      args: [],
    );
  }

  /// `Your lessons`
  String get your_lessons {
    return Intl.message(
      'Your lessons',
      name: 'your_lessons',
      desc: '',
      args: [],
    );
  }

  /// `Take course`
  String get take_course {
    return Intl.message(
      'Take course',
      name: 'take_course',
      desc: '',
      args: [],
    );
  }

  /// `Error occured during getting promotions`
  String get failed_getting_promotions {
    return Intl.message(
      'Error occured during getting promotions',
      name: 'failed_getting_promotions',
      desc: '',
      args: [],
    );
  }

  /// `Show expired promotions`
  String get show_expired_promotions {
    return Intl.message(
      'Show expired promotions',
      name: 'show_expired_promotions',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Value`
  String get value {
    return Intl.message(
      'Value',
      name: 'value',
      desc: '',
      args: [],
    );
  }

  /// `Promotion added succesfully`
  String get successfully_added_promotion {
    return Intl.message(
      'Promotion added succesfully',
      name: 'successfully_added_promotion',
      desc: '',
      args: [],
    );
  }

  /// `Error occured during adding promotion`
  String get failed_to_add_promotion {
    return Intl.message(
      'Error occured during adding promotion',
      name: 'failed_to_add_promotion',
      desc: '',
      args: [],
    );
  }

  /// `Add promotion`
  String get add_promotion {
    return Intl.message(
      'Add promotion',
      name: 'add_promotion',
      desc: '',
      args: [],
    );
  }

  /// `Choose course`
  String get choose_course {
    return Intl.message(
      'Choose course',
      name: 'choose_course',
      desc: '',
      args: [],
    );
  }

  /// `Choose english version image`
  String get choose_eng_promotion_image {
    return Intl.message(
      'Choose english version image',
      name: 'choose_eng_promotion_image',
      desc: '',
      args: [],
    );
  }

  /// `Choose polish version image`
  String get choose_pl_promotion_image {
    return Intl.message(
      'Choose polish version image',
      name: 'choose_pl_promotion_image',
      desc: '',
      args: [],
    );
  }

  /// `Amount of promotion in %`
  String get amount_of_promotion {
    return Intl.message(
      'Amount of promotion in %',
      name: 'amount_of_promotion',
      desc: '',
      args: [],
    );
  }

  /// `Provide valid number`
  String get provide_valid_number {
    return Intl.message(
      'Provide valid number',
      name: 'provide_valid_number',
      desc: '',
      args: [],
    );
  }

  /// `Choose expiry date`
  String get choose_expiry_date {
    return Intl.message(
      'Choose expiry date',
      name: 'choose_expiry_date',
      desc: '',
      args: [],
    );
  }

  /// `Expiry date`
  String get expiry_date {
    return Intl.message(
      'Expiry date',
      name: 'expiry_date',
      desc: '',
      args: [],
    );
  }

  /// `Change english version image`
  String get change_eng_promotion_image {
    return Intl.message(
      'Change english version image',
      name: 'change_eng_promotion_image',
      desc: '',
      args: [],
    );
  }

  /// `Change polish version image`
  String get change_pl_promotion_image {
    return Intl.message(
      'Change polish version image',
      name: 'change_pl_promotion_image',
      desc: '',
      args: [],
    );
  }

  /// `Error, try again`
  String get error_try_again {
    return Intl.message(
      'Error, try again',
      name: 'error_try_again',
      desc: '',
      args: [],
    );
  }

  /// `Successfully edited promotion`
  String get successfully_edited_promotion {
    return Intl.message(
      'Successfully edited promotion',
      name: 'successfully_edited_promotion',
      desc: '',
      args: [],
    );
  }

  /// `You are saving`
  String get you_save {
    return Intl.message(
      'You are saving',
      name: 'you_save',
      desc: '',
      args: [],
    );
  }

  /// `Buy more hours`
  String get buy_more_hours {
    return Intl.message(
      'Buy more hours',
      name: 'buy_more_hours',
      desc: '',
      args: [],
    );
  }

  /// `Modified confirm`
  String get modified_confirm {
    return Intl.message(
      'Modified confirm',
      name: 'modified_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Check route`
  String get check_the_ride {
    return Intl.message(
      'Check route',
      name: 'check_the_ride',
      desc: '',
      args: [],
    );
  }

  /// `Your route`
  String get your_ride {
    return Intl.message(
      'Your route',
      name: 'your_ride',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Sorry, error occured`
  String get sorry_error_occured {
    return Intl.message(
      'Sorry, error occured',
      name: 'sorry_error_occured',
      desc: '',
      args: [],
    );
  }

  /// `How many hours you want to buy ?`
  String get choose_hours_amount_to_pucharse {
    return Intl.message(
      'How many hours you want to buy ?',
      name: 'choose_hours_amount_to_pucharse',
      desc: '',
      args: [],
    );
  }

  /// `Hours bought succesfully`
  String get hours_bought_succesfully {
    return Intl.message(
      'Hours bought succesfully',
      name: 'hours_bought_succesfully',
      desc: '',
      args: [],
    );
  }

  /// `You don't run any courses`
  String get dont_run_any_courses {
    return Intl.message(
      'You don\'t run any courses',
      name: 'dont_run_any_courses',
      desc: '',
      args: [],
    );
  }

  /// `Course Ended`
  String get course_ended {
    return Intl.message(
      'Course Ended',
      name: 'course_ended',
      desc: '',
      args: [],
    );
  }

  /// `Check rides`
  String get check_rides {
    return Intl.message(
      'Check rides',
      name: 'check_rides',
      desc: '',
      args: [],
    );
  }

  /// `No students`
  String get no_students {
    return Intl.message(
      'No students',
      name: 'no_students',
      desc: '',
      args: [],
    );
  }

  /// `This email is already in use.`
  String get email_already_in_use {
    return Intl.message(
      'This email is already in use.',
      name: 'email_already_in_use',
      desc: '',
      args: [],
    );
  }

  /// `Address email is not valid`
  String get invalid_email {
    return Intl.message(
      'Address email is not valid',
      name: 'invalid_email',
      desc: '',
      args: [],
    );
  }

  /// `Use stronger password`
  String get weak_password {
    return Intl.message(
      'Use stronger password',
      name: 'weak_password',
      desc: '',
      args: [],
    );
  }

  /// `Invalid credentials`
  String get invalid_credentials {
    return Intl.message(
      'Invalid credentials',
      name: 'invalid_credentials',
      desc: '',
      args: [],
    );
  }

  /// `Wrong password`
  String get wrong_password {
    return Intl.message(
      'Wrong password',
      name: 'wrong_password',
      desc: '',
      args: [],
    );
  }

  /// `Couldn't add lesson`
  String get couldnt_add_lesson {
    return Intl.message(
      'Couldn\'t add lesson',
      name: 'couldnt_add_lesson',
      desc: '',
      args: [],
    );
  }

  /// `This course has already promotion`
  String get promotion_is_already_running {
    return Intl.message(
      'This course has already promotion',
      name: 'promotion_is_already_running',
      desc: '',
      args: [],
    );
  }

  /// `No promotions now :(`
  String get no_promotions_running {
    return Intl.message(
      'No promotions now :(',
      name: 'no_promotions_running',
      desc: '',
      args: [],
    );
  }

  /// `Sorry, we could not load promotions, swipe down to try again`
  String get we_couldnt_load_promotions_swipe_to_try_again {
    return Intl.message(
      'Sorry, we could not load promotions, swipe down to try again',
      name: 'we_couldnt_load_promotions_swipe_to_try_again',
      desc: '',
      args: [],
    );
  }

  /// `Location is blocked forever, go to settings to let app see your location`
  String get blocked_location_forever {
    return Intl.message(
      'Location is blocked forever, go to settings to let app see your location',
      name: 'blocked_location_forever',
      desc: '',
      args: [],
    );
  }

  /// `Lesson added successfully`
  String get lessons_added_successfully {
    return Intl.message(
      'Lesson added successfully',
      name: 'lessons_added_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Failed to add lesson`
  String get adding_lesson_failed {
    return Intl.message(
      'Failed to add lesson',
      name: 'adding_lesson_failed',
      desc: '',
      args: [],
    );
  }

  /// `Pick date`
  String get pick_date {
    return Intl.message(
      'Pick date',
      name: 'pick_date',
      desc: '',
      args: [],
    );
  }

  /// `Last oil change`
  String get last_oil_change_date {
    return Intl.message(
      'Last oil change',
      name: 'last_oil_change_date',
      desc: '',
      args: [],
    );
  }

  /// `Last car review`
  String get last_car_review {
    return Intl.message(
      'Last car review',
      name: 'last_car_review',
      desc: '',
      args: [],
    );
  }

  /// `Car mark`
  String get car_mark {
    return Intl.message(
      'Car mark',
      name: 'car_mark',
      desc: '',
      args: [],
    );
  }

  /// `Car model`
  String get car_model {
    return Intl.message(
      'Car model',
      name: 'car_model',
      desc: '',
      args: [],
    );
  }

  /// `Registration number`
  String get car_registration {
    return Intl.message(
      'Registration number',
      name: 'car_registration',
      desc: '',
      args: [],
    );
  }

  /// `Date of pucharse`
  String get date_of_pucharse {
    return Intl.message(
      'Date of pucharse',
      name: 'date_of_pucharse',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'pl'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
