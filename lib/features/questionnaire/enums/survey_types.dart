enum SurveyTypes {
  depression('depression'),
  anxiety('anxiety'),
  burnout('burnout'),
  // stressResilience('stress-resilience'),
  // postTraumaticStress('post-traumatic-stress'),
  // insomnia('insomnia'),
  // workStress('work-stress'),
  ;

  final String key;
  const SurveyTypes(this.key);
}
