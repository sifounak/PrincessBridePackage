function out = prependSpeaker(dialog,speaker)
arguments
    dialog (:,1) string;
    speaker(1,1) string;
end

out = speaker + ": " + dialog;

end

