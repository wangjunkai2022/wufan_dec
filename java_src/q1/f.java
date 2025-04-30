package q1;

import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.DiscoverListData;
import com.join.mgps.dto.DiscoverListItemBean;
import com.join.mgps.dto.DiscoverListWeiboItemBean;
import com.join.mgps.dto.EmptyMessage;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumProfileMessageData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.GameCommitListBean;
import com.join.mgps.dto.GameMainCommunityBean;
import com.join.mgps.dto.GivePriaceBean;
import com.join.mgps.dto.GroupListBean;
import com.join.mgps.dto.HavenForumDatabean;
import com.join.mgps.dto.HavenWishResultBean;
import com.join.mgps.dto.LabelBean;
import com.join.mgps.dto.MainLabelBean;
import com.join.mgps.dto.MessageCommentReplyResponse;
import com.join.mgps.dto.MulPostData;
import com.join.mgps.dto.NoticeFragmentBean;
import com.join.mgps.dto.RecommendLabelTag;
import com.join.mgps.dto.Response;
import com.join.mgps.dto.ResultResMainBean;
import java.util.List;
import java.util.Map;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.Headers;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.Part;
import retrofit2.http.PartMap;
import retrofit2.http.Query;
import retrofit2.http.Url;
/* compiled from: IRpcForumClient.java */
/* loaded from: classes4.dex */
public interface f {
    @FormUrlEncoded
    @POST("/group/comment/reply_delete")
    Call<ForumResponse<ForumData.ForumCommentReplyDeleteData>> A(@FieldMap Map<String, String> map);

    @GET("/forum/profile/favorites_posts")
    Call<ForumResponse<ForumData.ForumProfileFavoritesPostsData>> B(@Query("uid") int i2, @Query("token") String str, @Query("page") int i4, @Query("limit") int i5, @Query("device_id") String str2);

    @GET("/discover/headlines/index")
    Call<ForumResponse<DiscoverListData<DiscoverListItemBean>>> C(@Query("uid") int i2, @Query("page") int i4, @Query("tid") int i5);

    @GET("/group/posts/forum_tags")
    Call<ResultResMainBean<List<LabelBean>>> D(@Query("uid") String str, @Query("tag_name") String str2, @Query("type") int i2);

    @GET("/group/forum/My_forum/myForumMain")
    Call<ForumResponse<ForumData.MyForumMain>> E(@Query("uid") String str, @Query("token") String str2, @Query("page") int i2, @Query("limit") int i4);

    @GET("/forum/profile/reply_posts_message_list")
    Call<ForumResponse<ForumProfileMessageData>> F(@Query("uid") int i2, @Query("token") String str, @Query("page") int i4, @Query("limit") int i5);

    @GET("/forum/forum/all_list")
    Call<ForumResponse<ForumData.ForumForumAllData>> G(@Query("device_id") String str);

    @GET("/group/posts/submitv34/initPostExtra")
    Call<ResultResMainBean<Response>> H(@Query("uid") String str, @Query("token") String str2, @Query("post_type") int i2);

    @GET("/group/forum/game_comment")
    Call<ResultResMainBean<GameCommitListBean>> I(@Query("game_id") String str, @Query("fid") String str2, @Query("uid") String str3, @Query("token") String str4);

    @FormUrlEncoded
    @POST("/group/comment/reply")
    Call<ForumResponse<ForumData.ForumCommentReplyReplyData>> J(@FieldMap Map<String, String> map);

    @GET("/forum/profile/get_unread_message_count")
    Call<ForumResponse<ForumData.ForumProfileUnreadMessageCountData>> K(@Query("uid") int i2, @Query("token") String str, @Query("device_id") String str2);

    @GET("/forum/posts/multi_detail")
    Call<ForumResponse<MulPostData>> L(@Query("pids") String str);

    @GET("/group/forum/forum/getPostByType")
    Call<ForumResponse<ForumData.HomepageRecommendLabel>> M(@Query("fid") int i2, @Query("type") int i4, @Query("page") int i5, @Query("orderBy") int i6, @Query("limit") int i7, @Query("uid") String str, @Query("token") String str2);

    @GET("/forum/search/search_query/group_search")
    Call<ForumResponse<ForumData.ForumSearchQueryData>> N(@Query("page") int i2, @Query("limit") int i4, @Query("keyword") String str, @Query("device_id") String str2, @Query("fid") int i5);

    @Headers({"Connection:close"})
    @GET("/group/forum/welcomev35/getHomepageRecommendLabel")
    Call<ForumResponse<ForumData.HomepageRecommendLabel>> O(@Query("gid") int i2, @Query("page") int i4, @Query("uid") String str, @Query("token") String str2);

    @Headers({"Connection:close"})
    @GET("/group/forum/welcome/getHomepageRecommendGroup")
    Call<ForumResponse<ForumData.HomepageRecommendGroup>> P(@Query("uid") String str, @Query("token") String str2);

    @GET("/notification/notice/index")
    Call<NoticeFragmentBean> Q(@Query("uid") int i2, @Query("token") String str, @Query("page") int i4, @Query("limit") int i5, @Query("appver") String str2, @Query("package_type") String str3);

    @GET
    Call<ForumResponse<HavenForumDatabean>> R(@Url String str, @Query("name") String str2);

    @GET("/forum/forum/plate_detail")
    Call<ForumResponse<ForumData.ForumForumPlateData>> S(@Query("fid") int i2, @Query("page") int i4, @Query("limit") int i5, @Query("tab_type") String str, @Query("uid") int i6, @Query("token") String str2, @Query("from") String str3, @Query("position") String str4, @Query("device_id") String str5);

    @GET("/forum/forum/welcome")
    Call<ForumResponse<ForumData.ForumForumWelcomeData>> T(@Query("uid") int i2, @Query("token") String str, @Query("device_id") String str2);

    @GET("/forum/forum/all_list")
    Call<ForumResponse<ForumData.ForumForumAllData>> U(@Query("uid") int i2, @Query("token") String str, @Query("device_id") String str2);

    @GET("/forum/forum/welcome_posts")
    Call<ForumResponse<ForumData.ForumForumWelcomePostsData>> V(@Query("page") int i2, @Query("limit") int i4, @Query("uid") int i5, @Query("token") String str, @Query("device_id") String str2);

    @GET("/discover/forum_post/index")
    Call<ForumResponse<List<ForumBean.ForumPostsBean>>> W(@Query("uid") String str, @Query("token") String str2, @Query("page") int i2);

    @GET("/group/forum/tag/tagIndexPost")
    Call<ResultResMainBean<List<ForumBean.ForumPostsBean>>> X(@Query("uid") String str, @Query("tag_id") int i2, @Query("page") int i4, @Query("limit") int i5, @Query("type") int i6, @Query("order") String str2, @Query("token") String str3, @Query("fid") String str4);

    @GET("/group/posts/detail")
    Call<ForumResponse<ForumData.ForumPostsData>> Y(@Query("pid") int i2, @Query("limit") int i4, @Query("see_lz") int i5, @Query("comment_order") String str, @Query("uid") int i6, @Query("token") String str2, @Query("device_id") String str3, @Query("from") String str4, @Query("position") String str5);

    @GET("/group/forum/forum/getGroupFans")
    Call<ForumResponse<ForumData.GroupFans>> Z(@Query("fid") int i2, @Query("page") int i4, @Query("uid") String str, @Query("token") String str2);

    @GET("/forum/profile/comment")
    Call<ForumResponse<List<ForumData.ForumProfileCommentData>>> a(@Query("uid") int i2, @Query("token") String str, @Query("page") int i4, @Query("limit") int i5, @Query("device_id") String str2);

    @GET("/group/posts/detail/removePostTag")
    Call<ForumResponse<ForumData.HomepageRecommendLabel>> a0(@Query("pid") int i2, @Query("post_type") int i4, @Query("tagid_list") String str, @Query("uid") String str2, @Query("token") String str3);

    @GET("/discover/headlines/index")
    Call<ForumResponse<DiscoverListData<DiscoverListWeiboItemBean>>> b(@Query("uid") int i2, @Query("page") int i4, @Query("tid") int i5);

    @FormUrlEncoded
    @POST
    Call<ForumResponse<MessageCommentReplyResponse>> b0(@Url String str, @FieldMap Map<String, Object> map);

    @FormUrlEncoded
    @POST("/forum/posts/report")
    Call<ForumResponse<ForumData.ForumPostsReportData>> c(@FieldMap Map<String, String> map);

    @GET("/forum/profile/message_reply")
    Call<ForumResponse<ForumData.ForumProfileMessageReplyData>> c0(@Query("uid") int i2, @Query("token") String str, @Query("comment_pid") int i4, @Query("device_id") String str2);

    @GET("/group/posts/forum_tags/search")
    Call<ResultResMainBean<List<LabelBean>>> d(@Query("tag_name") String str);

    @FormUrlEncoded
    @POST("/group/comment/delete")
    Call<ForumResponse<ForumData.ForumCommentDeleteData>> d0(@FieldMap Map<String, String> map);

    @GET("/forum/search/search_index")
    Call<ForumResponse<ForumData.ForumSearchIndexData>> e(@Query("device_id") String str);

    @GET("/group/forum/forum/joinGroup")
    Call<ForumResponse<ForumData.HomepageRecommendLabel>> e0(@Query("fid") int i2, @Query("uid") String str, @Query("token") String str2);

    @FormUrlEncoded
    @POST("/user/share")
    Call<ForumResponse<ForumData.ForumResult>> f(@FieldMap Map<String, String> map);

    @GET("/group/posts/detail_comments")
    Call<ForumResponse<ForumData.ForumPostsData>> f0(@Query("pid") int i2, @Query("page") int i4, @Query("limit") int i5, @Query("see_lz") int i6, @Query("comment_order") String str, @Query("uid") int i7, @Query("token") String str2, @Query("device_id") String str3, @Query("from") String str4, @Query("position") String str5);

    @GET("/group/posts/detail/addPostTag")
    Call<ForumResponse<ForumData.HomepageRecommendLabel>> g(@Query("pid") int i2, @Query("post_type") int i4, @Query("tagid_list") String str, @Query("uid") String str2, @Query("token") String str3);

    @FormUrlEncoded
    @POST("/group/posts/wish")
    Call<ForumResponse<HavenWishResultBean>> g0(@FieldMap Map<String, Object> map);

    @GET("/forum/forum/topic_detail")
    Call<ForumResponse<ForumData.ForumForumTopicData>> h(@Query("tid") int i2, @Query("uid") int i4, @Query("token") String str, @Query("page") int i5, @Query("limit") int i6, @Query("device_id") String str2);

    @GET("/group/posts/detail/setFirstPost")
    Call<ForumResponse<ForumData.ForumResult>> h0(@Query("pid") int i2, @Query("uid") String str, @Query("token") String str2);

    @GET("/group/forum/forum/exitGroup")
    Call<ForumResponse<ForumData.HomepageRecommendLabel>> i(@Query("fid") int i2, @Query("uid") String str, @Query("token") String str2);

    @GET("/forum/forum/welcome")
    Call<ForumResponse<ForumData.ForumForumWelcomeData>> i0(@Query("device_id") String str);

    @FormUrlEncoded
    @POST("/forum/posts/help_solvev34")
    Call<ForumResponse<ForumData.ForumPostsHelpSolveData>> j(@FieldMap Map<String, String> map);

    @GET("/group/posts/submitv34/postTipsText")
    Call<ResultResMainBean<String>> j0(@Query("post_type") int i2);

    @GET("/forum/profile/posts")
    Call<ForumResponse<ForumData.ForumProfilePostsData>> k(@Query("uid") int i2, @Query("token") String str, @Query("page") int i4, @Query("limit") int i5, @Query("device_id") String str2);

    @FormUrlEncoded
    @POST("/forum/posts/favorites")
    Call<ForumResponse<ForumData.ForumPostsFavoritesData>> k0(@FieldMap Map<String, String> map);

    @GET("/forum/search/search_query")
    Call<ForumResponse<ForumData.ForumSearchQueryData>> l(@Query("page") int i2, @Query("limit") int i4, @Query("keyword") String str, @Query("device_id") String str2);

    @FormUrlEncoded
    @POST("/group/comment/reply")
    Call<ForumResponse<ForumData.ForumCommentReplyData>> l0(@FieldMap Map<String, String> map);

    @POST
    Call<GivePriaceBean> m(@Url String str, @Body CommonRequestBean commonRequestBean);

    @GET("/forum/profile/reply_posts_message_list/praise")
    Call<ForumResponse<ForumProfileMessageData>> m0(@Query("uid") int i2, @Query("token") String str, @Query("page") int i4, @Query("limit") int i5);

    @GET("/group/forum/game_recommend")
    Call<ResultResMainBean<GameMainCommunityBean>> n(@Query("fid") int i2);

    @GET("/group/forum/tag/userFocusTag")
    Call<ResultResMainBean<EmptyMessage>> n0(@Query("uid") String str, @Query("tag_id") String str2, @Query("type") int i2, @Query("tag_name") String str3);

    @FormUrlEncoded
    @POST("/forum/posts/praise")
    Call<ForumResponse<ForumData.ForumPostsPraiseData>> o(@FieldMap Map<String, String> map);

    @GET("/group/posts/gamefavoritelist")
    Call<ResultResMainBean<List<CollectionBeanSub>>> o0(@Query("uid") String str, @Query("page") int i2);

    @GET("/group/forum/tag/tagIndexBase")
    Call<ResultResMainBean<MainLabelBean>> p(@Query("uid") String str, @Query("tag_id") int i2, @Query("fid") int i4, @Query("tag_name") String str2);

    @GET("/forum/forum/forum_group_list")
    Call<ForumResponse<ForumData.ForumForumGroupsData>> p0(@Query("uid") int i2, @Query("token") String str, @Query("device_id") String str2);

    @GET("/forum/forum/plate_detail")
    Call<ForumResponse<ForumData.ForumForumPlateData>> q(@Query("fid") int i2, @Query("page") int i4, @Query("limit") int i5, @Query("tab_type") String str, @Query("uid") int i6, @Query("token") String str2, @Query("device_id") String str3);

    @FormUrlEncoded
    @POST("/forum/posts/delete")
    Call<ForumResponse<ForumData.ForumPostsDeleteData>> q0(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST(com.join.mgps.rpc.g.H1)
    Call<ForumResponse<ForumData.ForumPostsFavoritesData>> r(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/group/posts/best")
    Call<ForumResponse<ForumData.ForumPostsBestData>> r0(@FieldMap Map<String, String> map);

    @GET("/group/posts/forum_group")
    Call<ResultResMainBean<GroupListBean>> s(@Query("uid") String str, @Query("token") String str2, @Query("tag_id") String str3, @Query("tag_name") String str4);

    @GET("/group/posts/detail_comments")
    Call<ForumResponse<ForumData.ForumPostsData>> s0(@Query("pid") int i2, @Query("page") int i4, @Query("limit") int i5, @Query("see_lz") int i6, @Query("comment_order") String str, @Query("device_id") String str2, @Query("from") String str3, @Query("position") String str4);

    @GET("/forum/profile/message_list")
    Call<ForumResponse<ForumData.ForumProfileMessageData>> t(@Query("uid") int i2, @Query("token") String str, @Query("page") int i4, @Query("limit") int i5, @Query("device_id") String str2);

    @GET("/forum/forum/welcome_posts")
    Call<ForumResponse<ForumData.ForumForumWelcomePostsData>> t0(@Query("page") int i2, @Query("limit") int i4, @Query("device_id") String str);

    @GET("/group/posts/detail/showAddTagList")
    Call<ForumResponse<List<RecommendLabelTag>>> u(@Query("uid") String str, @Query("token") String str2, @Query("post_type") int i2);

    @GET("/group/forum/forumv34/getForumGroupIndex")
    Call<ForumResponse<ForumData.ForumGroupIndex>> u0(@Query("fid") int i2, @Query("uid") String str, @Query("token") String str2);

    @GET("/group/posts/detail")
    Call<ForumResponse<ForumData.ForumPostsData>> v(@Query("pid") int i2, @Query("limit") int i4, @Query("see_lz") int i5, @Query("comment_order") String str, @Query("device_id") String str2, @Query("from") String str3, @Query("position") String str4);

    @FormUrlEncoded
    @POST("/group/posts/post_gag")
    Call<ForumResponse<ForumData.ForumResult>> v0(@FieldMap Map<String, String> map);

    @GET("/group/posts/detail/showRemoveTagList")
    Call<ForumResponse<List<RecommendLabelTag>>> w(@Query("pid") int i2, @Query("uid") String str, @Query("token") String str2, @Query("post_type") int i4);

    @FormUrlEncoded
    @POST("/forum/forum/follow")
    Call<ForumResponse<ForumData.ForumForumFollowData>> w0(@FieldMap Map<String, String> map);

    @GET("/forum/forum/follow_list")
    Call<ForumResponse<ForumData.ForumForumFollowListData>> x(@Query("uid") int i2, @Query("token") String str, @Query("device_id") String str2);

    @POST("/group/posts/submitv34")
    @Multipart
    Call<ForumResponse<ForumData.ForumPostsSubmitData>> x0(@PartMap Map<String, RequestBody> map, @Part List<MultipartBody.Part> list);

    @GET("/user/favoritev35/get_favorites_list")
    Call<ForumResponse<ForumData.ForumUserFavoritesDatas>> y(@Query("uid") int i2, @Query("token") String str, @Query("page") int i4, @Query("limit") int i5, @Query("device_id") String str2, @Query("version") String str3, @Query("type") int i6);

    @POST("/group/posts/submitv34")
    @Multipart
    Call<ResultResMainBean<Response>> y0(@PartMap Map<String, RequestBody> map, @Part List<MultipartBody.Part> list);

    @FormUrlEncoded
    @POST("/group/forum/welcome/saveHomepageRecommendLabel")
    Call<ForumResponse<ForumData.HomepageRecommendLabel>> z(@FieldMap Map<String, String> map);

    @POST("/group/posts/comment")
    @Multipart
    Call<ForumResponse<ForumData.ForumPostsCommentData>> z0(@PartMap Map<String, RequestBody> map, @Part List<MultipartBody.Part> list);
}
