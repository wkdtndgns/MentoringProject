package net.skhu.mentoring.dto;
import java.util.Date;

import lombok.Data;
@Data
public class NoticeBBSPost {
	int id;
	String title;
	String context;
    Date writeDate;
    int views;
    int userId;
    int partyBBSId;
    int profileId;
    int currentUserProfileId;
    int commentCount;
    String userName;
    String userEmail;
}
