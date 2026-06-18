class CareerScoreService {
  static int calculateScore({
    required bool profileCompleted,
    required int skillsCount,
    required bool resumeUploaded,
  }) {
    int score = 0;

    // Profile Completion = 40 points
    if (profileCompleted) {
      score += 40;
    }

    // Skills = up to 30 points
    if (skillsCount >= 5) {
      score += 30;
    } else {
      score += (skillsCount * 6);
    }

    // Resume Upload = 30 points
    if (resumeUploaded) {
      score += 30;
    }

    return score;
  }
}
