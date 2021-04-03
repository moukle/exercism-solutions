@enum question_types begin
    question
    forceful_question
    yelling
    silence
    misc
end

function bob(stimulus::AbstractString)
    response = Dict(
        question => "Sure.",
        yelling => "Whoa, chill out!",
        silence => "Fine. Be that way!",
        misc => "Whatever.",
        forceful_question => "Calm down, I know what I'm doing!",
    )

    return response[question_type(stimulus)]
end

function question_type(stimulus::AbstractString) :: question_types
    stimulus = rstrip(stimulus)

    is_empty    = isempty(stimulus)
    is_question = (length(stimulus) > 0 && stimulus[end] == '?')
    is_yelling  = (uppercase(stimulus) == stimulus && lowercase(stimulus) != stimulus)

    is_question && is_yelling && return forceful_question
    is_question &&               return question
    is_yelling  &&               return yelling
    is_empty    &&               return silence
    return misc
end
