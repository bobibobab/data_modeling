INSERT INTO user (user_id, email, name, gender, password) VALUES
(1, 'aaa@gmail.com', 'Jisu Song', true, '123'),
(2, 'bbb@gmail.com', 'Tom Kim', false, '123'),
(3, 'fff@gmail.com', 'Jimmy Lee', true, '123');

INSERT INTO categories (category_id, name) VALUES
(1, 'Shoulders'),
(2, 'Chest'),
(3, 'Back'),
(4, 'Legs'),
(5, 'Arms');

INSERT INTO exercise (exercise_id, name, description, equipment, intensity, target_muscles) VALUES
(1, 'Overhead Press', 'Press a barbell overhead to strengthen shoulders.', 'Barbell', 'High', 'Shoulders'),
(2, 'Lateral Raise', 'Lift dumbbells to the side for shoulder definition.', 'Dumbbell', 'Medium', 'Shoulders'),
(3, 'Bench Press', 'Press a barbell upward while lying on a bench.', 'Barbell', 'High', 'Chest'),
(4, 'Squat', 'Full-body leg exercise with a barbell.', 'Barbell', 'High', 'Legs'),
(5, 'Barbell Row', 'Pull a barbell towards your chest for back muscles.', 'Barbell', 'Medium', 'Back'),
(6, 'Bicep Curl', 'Curl a dumbbell for bicep strength.', 'Dumbbell', 'Low', 'Arms'),
(7, 'Tricep Pushdown', 'Use a cable machine to target triceps.', 'Cable Machine', 'Low', 'Arms');

INSERT INTO exerciseCategories (exercise_id, category_id) VALUES
(1, 1), -- Overhead Press belongs to Shoulders
(2, 1), -- Lateral Raise belongs to Shoulders
(3, 2), -- Bench Press belongs to Chest
(4, 4), -- Squat belongs to Legs
(5, 3), -- Barbell Row belongs to Back
(6, 5), -- Bicep Curl belongs to Arms
(7, 5); -- Tricep Pushdown belongs to Arms

INSERT INTO userExercises (user_id, exercise_id, sets, reps, created_At) VALUES
(1, 1, 3, 10, '2025-01-27'), -- Jisu Song does Overhead Press
(1, 4, 4, 12, '2025-01-27'), -- Jisu Song does Squats
(2, 3, 3, 8, '2025-01-27'), -- Tom Kim does Bench Press
(2, 7, 3, 15, '2025-01-27'), -- Tom Kim does Tricep Pushdowns
(3, 5, 4, 10, '2025-01-27'), -- Jimmy Lee does Barbell Rows
(3, 6, 3, 12, '2025-01-27'); -- Jimmy Lee does Bicep Curls

