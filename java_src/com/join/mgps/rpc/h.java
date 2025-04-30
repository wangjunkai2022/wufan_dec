package com.join.mgps.rpc;

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
import retrofit2.http.Body;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.Headers;
import retrofit2.http.POST;
import retrofit2.http.Path;
import retrofit2.http.Query;
import retrofit2.http.Url;
/* compiled from: RpcForumClient.java */
/* loaded from: classes4.dex */
public interface h {
    @POST("/group/comment/reply_delete")
    ForumResponse<ForumData.ForumCommentReplyDeleteData> A(@Body Map<String, String> map);

    @GET("/forum/profile/favorites_posts?uid={uid}&token={token}&page={page}&limit={limit}&device_id={device_id}")
    ForumResponse<ForumData.ForumProfileFavoritesPostsData> B(@Path("uid") int i2, @Path("token") String str, @Path("page") int i4, @Path("limit") int i5, @Path("device_id") String str2);

    @GET("/discover/headlines/index")
    ForumResponse<DiscoverListData<DiscoverListItemBean>> C(@Query("uid") int i2, @Query("page") int i4, @Query("tid") int i5);

    @GET("/group/posts/forum_tags?uid={uid}&tag_name={tag_name}&type={type}")
    ResultResMainBean<List<LabelBean>> D(@Path("uid") String str, @Path("tag_name") String str2, @Path("type") int i2);

    @GET("/group/forum/My_forum/myForumMain?uid={uid}&token={token}&page={page}&limit={limit}")
    ForumResponse<ForumData.MyForumMain> E(@Path("uid") String str, @Path("token") String str2, @Path("page") int i2, @Path("limit") int i4);

    @GET("/forum/profile/reply_posts_message_list")
    ForumResponse<ForumProfileMessageData> F(@Query("uid") int i2, @Query("token") String str, @Query("page") int i4, @Query("limit") int i5);

    @GET("/forum/forum/all_list?device_id={device_id}")
    ForumResponse<ForumData.ForumForumAllData> G(@Path("device_id") String str);

    @GET("/group/posts/submitv34/initPostExtra?uid={uid}&token={token}&post_type={post_type}")
    ResultResMainBean<Response> H(@Path("uid") String str, @Path("token") String str2, @Path("post_type") int i2);

    @GET("/group/forum/game_comment?game_id={game_id}&fid={fid}&uid={uid}&token={token}")
    ResultResMainBean<GameCommitListBean> I(@Path("game_id") String str, @Path("fid") String str2, @Path("uid") String str3, @Path("token") String str4);

    @POST("/group/comment/reply")
    ForumResponse<ForumData.ForumCommentReplyReplyData> J(@Body Map<String, String> map);

    @GET("/forum/profile/get_unread_message_count?uid={uid}&token={token}&device_id={device_id}")
    ForumResponse<ForumData.ForumProfileUnreadMessageCountData> K(@Path("uid") int i2, @Path("token") String str, @Path("device_id") String str2);

    @GET("/forum/posts/multi_detail?pids={pids}")
    ForumResponse<MulPostData> L(@Path("pids") String str);

    @GET("/group/forum/forum/getPostByType?fid={fid}&type={type}&page={page}&orderBy={orderBy}&limit={limit}&uid={uid}&token={token}")
    ForumResponse<ForumData.HomepageRecommendLabel> M(@Path("fid") int i2, @Path("type") int i4, @Path("page") int i5, @Path("orderBy") int i6, @Path("limit") int i7, @Path("uid") String str, @Path("token") String str2);

    @GET("/forum/search/search_query/group_search?page={page}&limit={limit}&keyword={keyword}&device_id={device_id}&fid={fid}")
    ForumResponse<ForumData.ForumSearchQueryData> N(@Path("page") int i2, @Path("limit") int i4, @Path("keyword") String str, @Path("device_id") String str2, @Path("fid") int i5);

    @GET("/group/forum/welcomev35/getHomepageRecommendLabel?gid={gid}&page={page}&uid={uid}&token={token}")
    ForumResponse<ForumData.HomepageRecommendLabel> O(@Query("gid") int i2, @Query("page") int i4, @Query("uid") String str, @Query("token") String str2);

    @GET("/group/forum/welcome/getHomepageRecommendGroup?uid={uid}&token={token}")
    ForumResponse<ForumData.HomepageRecommendGroup> P(@Query("uid") String str, @Query("token") String str2);

    @GET("/notification/notice/index")
    NoticeFragmentBean Q(@Query("uid") int i2, @Query("token") String str, @Query("page") int i4, @Query("limit") int i5, @Query("appver") String str2, @Query("package_type") String str3);

    @GET("/posts/tags")
    ForumResponse<HavenForumDatabean> R(@Url String str, @Query("name") String str2);

    @GET("/forum/forum/plate_detail?fid={fid}&page={page}&limit={limit}&tab_type={tab_type}&uid={uid}&token={token}&from={from}&position={position}&device_id={device_id}")
    ForumResponse<ForumData.ForumForumPlateData> S(@Path("fid") int i2, @Path("page") int i4, @Path("limit") int i5, @Path("tab_type") String str, @Path("uid") int i6, @Path("token") String str2, @Path("from") String str3, @Path("position") String str4, @Path("device_id") String str5);

    @GET("/forum/forum/welcome?uid={uid}&token={token}&device_id={device_id}")
    ForumResponse<ForumData.ForumForumWelcomeData> T(@Path("uid") int i2, @Path("token") String str, @Path("device_id") String str2);

    @GET("/forum/forum/all_list?uid={uid}&token={token}&device_id={device_id}")
    ForumResponse<ForumData.ForumForumAllData> U(@Path("uid") int i2, @Path("token") String str, @Path("device_id") String str2);

    @GET("/forum/forum/welcome_posts?page={page}&limit={limit}&uid={uid}&token={token}&device_id={device_id}")
    ForumResponse<ForumData.ForumForumWelcomePostsData> V(@Path("page") int i2, @Path("limit") int i4, @Path("uid") int i5, @Path("token") String str, @Path("device_id") String str2);

    @GET("/discover/forum_post/index?uid={uid}&token={token}&page={page}")
    ForumResponse<List<ForumBean.ForumPostsBean>> W(@Path("uid") String str, @Path("token") String str2, @Path("page") int i2);

    @GET("/group/forum/tag/tagIndexPost?uid={uid}&tag_id={tag_id}&page={page}&limit={limit}&type={type}&order={order}&token={token}&fid={fid}")
    ResultResMainBean<List<ForumBean.ForumPostsBean>> X(@Path("uid") String str, @Path("tag_id") int i2, @Path("page") int i4, @Path("limit") int i5, @Path("type") int i6, @Path("order") String str2, @Path("token") String str3, @Path("fid") String str4);

    @GET("/group/posts/detail?pid={pid}&limit={limit}&see_lz={see_lz}&comment_order={comment_order}&uid={uid}&token={token}&device_id={device_id}&from={from}&position={position}")
    ForumResponse<ForumData.ForumPostsData> Y(@Path("pid") int i2, @Path("limit") int i4, @Path("see_lz") int i5, @Path("comment_order") String str, @Path("uid") int i6, @Path("token") String str2, @Path("device_id") String str3, @Path("from") String str4, @Path("position") String str5);

    @GET("/group/forum/forum/getGroupFans?fid={fid}&page={page}&uid={uid}&token={token}")
    ForumResponse<ForumData.GroupFans> Z(@Path("fid") int i2, @Path("page") int i4, @Path("uid") String str, @Path("token") String str2);

    @GET("/forum/profile/comment?uid={uid}&token={token}&page={page}&limit={limit}&device_id={device_id}")
    ForumResponse<List<ForumData.ForumProfileCommentData>> a(@Path("uid") int i2, @Path("token") String str, @Path("page") int i4, @Path("limit") int i5, @Path("device_id") String str2);

    @GET("/group/posts/detail/removePostTag?pid={pid}&post_type={post_type}&tagid_list={tagid_list}&uid={uid}&token={token}")
    ForumResponse<ForumData.HomepageRecommendLabel> a0(@Path("pid") int i2, @Path("post_type") int i4, @Path("tagid_list") String str, @Path("uid") String str2, @Path("token") String str3);

    @GET("/discover/headlines/index")
    ForumResponse<DiscoverListData<DiscoverListWeiboItemBean>> b(@Query("uid") int i2, @Query("page") int i4, @Query("tid") int i5);

    @FormUrlEncoded
    @POST
    ForumResponse<MessageCommentReplyResponse> b0(@Url String str, @FieldMap Map<String, Object> map);

    @POST("/forum/posts/report")
    ForumResponse<ForumData.ForumPostsReportData> c(@Body Map<String, String> map);

    @GET("/forum/profile/message_reply?uid={uid}&token={token}&comment_pid={comment_pid}&device_id={device_id}")
    ForumResponse<ForumData.ForumProfileMessageReplyData> c0(@Path("uid") int i2, @Path("token") String str, @Path("comment_pid") int i4, @Path("device_id") String str2);

    @GET("/group/posts/forum_tags/search?tag_name={tag_name}")
    ResultResMainBean<List<LabelBean>> d(@Path("tag_name") String str);

    @POST("/group/comment/delete")
    ForumResponse<ForumData.ForumCommentDeleteData> d0(@Body Map<String, String> map);

    @GET("/forum/search/search_index?device_id={device_id}")
    ForumResponse<ForumData.ForumSearchIndexData> e(@Path("device_id") String str);

    @GET("/group/forum/forum/joinGroup?fid={fid}&uid={uid}&token={token}")
    ForumResponse<ForumData.HomepageRecommendLabel> e0(@Path("fid") int i2, @Path("uid") String str, @Path("token") String str2);

    @POST("/user/share")
    ForumResponse<ForumData.ForumResult> f(@Body Map<String, String> map);

    @GET("/group/posts/detail_comments?pid={pid}&page={page}&limit={limit}&see_lz={see_lz}&comment_order={comment_order}&uid={uid}&token={token}&device_id={device_id}&from={from}&position={position}")
    ForumResponse<ForumData.ForumPostsData> f0(@Path("pid") int i2, @Path("page") int i4, @Path("limit") int i5, @Path("see_lz") int i6, @Path("comment_order") String str, @Path("uid") int i7, @Path("token") String str2, @Path("device_id") String str3, @Path("from") String str4, @Path("position") String str5);

    @GET("/group/posts/detail/addPostTag?pid={pid}&post_type={post_type}&tagid_list={tagid_list}&uid={uid}&token={token}")
    ForumResponse<ForumData.HomepageRecommendLabel> g(@Path("pid") int i2, @Path("post_type") int i4, @Path("tagid_list") String str, @Path("uid") String str2, @Path("token") String str3);

    @FormUrlEncoded
    @POST("/group/posts/wish")
    ForumResponse<HavenWishResultBean> g0(@FieldMap Map<String, Object> map);

    @GET("/forum/forum/topic_detail?tid={tid}&uid={uid}&token={token}&page={page}&limit={limit}&device_id={device_id}")
    ForumResponse<ForumData.ForumForumTopicData> h(@Path("tid") int i2, @Path("uid") int i4, @Path("token") String str, @Path("page") int i5, @Path("limit") int i6, @Path("device_id") String str2);

    @GET("/group/posts/detail/setFirstPost?pid={pid}&uid={uid}&token={token}")
    ForumResponse<ForumData.ForumResult> h0(@Path("pid") int i2, @Path("uid") String str, @Path("token") String str2);

    @GET("/group/forum/forum/exitGroup?fid={fid}&uid={uid}&token={token}")
    ForumResponse<ForumData.HomepageRecommendLabel> i(@Path("fid") int i2, @Path("uid") String str, @Path("token") String str2);

    @GET("/forum/forum/welcome?device_id={device_id}")
    ForumResponse<ForumData.ForumForumWelcomeData> i0(@Path("device_id") String str);

    @POST("/forum/posts/help_solvev34")
    ForumResponse<ForumData.ForumPostsHelpSolveData> j(@Body Map<String, String> map);

    @GET("/group/posts/submitv34/postTipsText?post_type={post_type}")
    ResultResMainBean<String> j0(@Path("post_type") int i2);

    @GET("/forum/profile/posts?uid={uid}&token={token}&page={page}&limit={limit}&device_id={device_id}")
    ForumResponse<ForumData.ForumProfilePostsData> k(@Path("uid") int i2, @Path("token") String str, @Path("page") int i4, @Path("limit") int i5, @Path("device_id") String str2);

    @POST("/forum/posts/favorites")
    ForumResponse<ForumData.ForumPostsFavoritesData> k0(@Body Map<String, String> map);

    @GET("/forum/search/search_query?page={page}&limit={limit}&keyword={keyword}&device_id={device_id}")
    ForumResponse<ForumData.ForumSearchQueryData> l(@Path("page") int i2, @Path("limit") int i4, @Path("keyword") String str, @Path("device_id") String str2);

    @POST("/group/comment/reply")
    ForumResponse<ForumData.ForumCommentReplyData> l0(@Body Map<String, String> map);

    @POST
    GivePriaceBean m(@Url String str, @Body CommonRequestBean commonRequestBean);

    @GET("/forum/profile/reply_posts_message_list/praise")
    ForumResponse<ForumProfileMessageData> m0(@Query("uid") int i2, @Query("token") String str, @Query("page") int i4, @Query("limit") int i5);

    @GET("/group/forum/game_recommend?fid={fid}")
    ResultResMainBean<GameMainCommunityBean> n(@Path("fid") int i2);

    @GET("/group/forum/tag/userFocusTag?uid={uid}&tag_id={tag_id}&type={type}&tag_name={tag_name}")
    ResultResMainBean<EmptyMessage> n0(@Path("uid") String str, @Path("tag_id") String str2, @Path("type") int i2, String str3);

    @POST("/forum/posts/praise")
    ForumResponse<ForumData.ForumPostsPraiseData> o(@Body Map<String, String> map);

    @GET("/group/posts/gamefavoritelist?uid={uid}&page={page}")
    ResultResMainBean<List<CollectionBeanSub>> o0(@Path("uid") String str, @Path("page") int i2);

    @GET("/group/forum/tag/tagIndexBase?uid={uid}&tag_id={tag_id}&fid={fid}")
    ResultResMainBean<MainLabelBean> p(@Path("uid") String str, @Path("tag_id") int i2, @Path("fid") int i4, String str2);

    @GET("/forum/forum/forum_group_list?uid={uid}&token={token}&device_id={device_id}")
    ForumResponse<ForumData.ForumForumGroupsData> p0(@Path("uid") int i2, @Path("token") String str, @Path("device_id") String str2);

    @GET("/forum/forum/plate_detail?fid={fid}&page={page}&limit={limit}&tab_type={tab_type}&uid={uid}&token={token}&device_id={device_id}")
    ForumResponse<ForumData.ForumForumPlateData> q(@Path("fid") int i2, @Path("page") int i4, @Path("limit") int i5, @Path("tab_type") String str, @Path("uid") int i6, @Path("token") String str2, @Path("device_id") String str3);

    @POST("/forum/posts/delete")
    ForumResponse<ForumData.ForumPostsDeleteData> q0(@Body Map<String, String> map);

    @POST(g.H1)
    ForumResponse<ForumData.ForumPostsFavoritesData> r(@Body Map<String, String> map);

    @POST("/group/posts/best")
    ForumResponse<ForumData.ForumPostsBestData> r0(@Body Map<String, String> map);

    @GET("/group/posts/forum_group?uid={uid}&token={token}&tag_id={tag_id}&tag_name={tag_name}")
    ResultResMainBean<GroupListBean> s(@Path("uid") String str, @Path("token") String str2, @Path("tag_id") String str3, String str4);

    @GET("/group/posts/detail_comments?pid={pid}&page={page}&limit={limit}&see_lz={see_lz}&comment_order={comment_order}&device_id={device_id}&from={from}&position={position}")
    ForumResponse<ForumData.ForumPostsData> s0(@Path("pid") int i2, @Path("page") int i4, @Path("limit") int i5, @Path("see_lz") int i6, @Path("comment_order") String str, @Path("device_id") String str2, @Path("from") String str3, @Path("position") String str4);

    @GET("/forum/profile/message_list?uid={uid}&token={token}&page={page}&limit={limit}&device_id={device_id}")
    ForumResponse<ForumData.ForumProfileMessageData> t(@Path("uid") int i2, @Path("token") String str, @Path("page") int i4, @Path("limit") int i5, @Path("device_id") String str2);

    @GET("/forum/forum/welcome_posts?page={page}&limit={limit}&device_id={device_id}")
    ForumResponse<ForumData.ForumForumWelcomePostsData> t0(@Path("page") int i2, @Path("limit") int i4, @Path("device_id") String str);

    @GET("/group/posts/detail/showAddTagList?uid={uid}&token={token}&post_type={post_type}")
    ForumResponse<List<RecommendLabelTag>> u(@Path("uid") String str, @Path("token") String str2, @Path("post_type") int i2);

    @GET("/group/forum/forumv34/getForumGroupIndex?fid={fid}&uid={uid}&token={token}")
    ForumResponse<ForumData.ForumGroupIndex> u0(@Path("fid") int i2, @Path("uid") String str, @Path("token") String str2);

    @GET("/group/posts/detail?pid={pid}&limit={limit}&see_lz={see_lz}&comment_order={comment_order}&device_id={device_id}&from={from}&position={position}")
    ForumResponse<ForumData.ForumPostsData> v(@Path("pid") int i2, @Path("limit") int i4, @Path("see_lz") int i5, @Path("comment_order") String str, @Path("device_id") String str2, @Path("from") String str3, @Path("position") String str4);

    @POST("/group/posts/post_gag")
    ForumResponse<ForumData.ForumResult> v0(@Body Map<String, String> map);

    @GET("/group/posts/detail/showRemoveTagList?pid={pid}&uid={uid}&token={token}&post_type={post_type}")
    ForumResponse<List<RecommendLabelTag>> w(@Path("pid") int i2, @Path("uid") String str, @Path("token") String str2, @Path("post_type") int i4);

    @POST("/forum/forum/follow")
    ForumResponse<ForumData.ForumForumFollowData> w0(@Body Map<String, String> map);

    @GET("/forum/forum/follow_list?uid={uid}&token={token}&device_id={device_id}")
    ForumResponse<ForumData.ForumForumFollowListData> x(@Path("uid") int i2, @Path("token") String str, @Path("device_id") String str2);

    @Headers({"Content-Type:multipart/form-data"})
    @POST("/group/posts/submitv34")
    ResultResMainBean<Response> x0(@Body Map<String, Object> map);

    @GET("/user/favoritev35/get_favorites_list?uid={uid}&token={token}&page={page}&limit={limit}&device_id={device_id}&version={version}&type={type}")
    ForumResponse<ForumData.ForumUserFavoritesDatas> y(@Path("uid") int i2, @Path("token") String str, @Path("page") int i4, @Path("limit") int i5, @Path("device_id") String str2, @Path("version") String str3, @Path("type") int i6);

    @Headers({"Content-Type:multipart/form-data"})
    @POST("/group/posts/submitv34")
    ForumResponse<ForumData.ForumPostsSubmitData> y0(@Body Map<String, Object> map);

    @POST("/group/forum/welcome/saveHomepageRecommendLabel")
    ForumResponse<ForumData.HomepageRecommendLabel> z(@Body Map<String, String> map);

    @Headers({"Content-Type:multipart/form-data", "Charset:UTF-8"})
    @POST("/group/posts/comment")
    ForumResponse<ForumData.ForumPostsCommentData> z0(@Body Map<String, Object> map);
}
