<%
Sub Application_OnStart
	Application("Status") = "has been started"
end sub
sub Application_OnEnd
	Application("Status") = "has been ended"
end sub

sub Session_OnStart
	Application("SessionStatus") = "Session Started"
end sub
sub Session_OnEnd
	Application("SessionStatus") = "Session ended"
end sub
%>