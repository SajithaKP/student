<!DOCTYPE html>
<html>
<head>
    <title>Students List</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<div class="container">
    <h1>Students List</h1>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Name of Student</th>
                <th>Parent Name</th>
                <th>Opted Courses</th>
                <th>Enable or Disable</th>
            </tr>
        </thead>
        <tbody>
            @foreach($students as $student)
                <tr>
                    <td>{{ $student->name }}</td>
                    <td>{{ $student->parent->name }}</td>
                    <td>
                        @foreach ($student->optedCourses as $optedCourse) 
                          {{ $optedCourse->course->course }}<br>
                        @endforeach
                    </td>
                    <td>
                        @foreach ($student->OptedCourses as $course)
                        <div class="form-check form-switch">
                            @if ($course->is_active)
                                <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked_{{ $course->id }}" checked>
                            @else
                                <input class="form-check-input" type="checkbox" id="flexSwitchCheckDisabled_{{ $course->id }}" >
                            @endif
                            {{-- <label class="form-check-label" for="flexSwitchCheckChecked_{{ $course->id }}">
                                Course ID: {{ $course->id }}
                            </label> --}}
                        </div>
                    @endforeach
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        $('input[type="checkbox"]').change(function() {
            var isChecked = $(this).prop('checked') ? 1 : 0;
            var courseID = $(this).attr('id').split('_')[1]; // Extract course ID from element ID

            $.ajax({
                url: '/update-active-status/' + courseID,
                method: 'POST',
                data: {
                    _token: '{{ csrf_token() }}',
                    is_active: isChecked
                },
                success: function(response) {
                    console.log(response);
                    // Update UI or show success message
                },
                error: function(xhr, status, error) {
                    console.error(xhr.responseText);
                    // Handle errors
                }
            });
        });
    });
</script>

</body>
</html>
