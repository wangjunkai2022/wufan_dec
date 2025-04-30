package q1;

import com.join.mgps.dto.ArchiveDataBean;
import com.join.mgps.dto.ArchiveDownDataBean;
import com.join.mgps.dto.ArchiveEvaluteDataBean;
import com.join.mgps.dto.ArchiveNumDataBean;
import com.join.mgps.dto.ArchiveResponseMain;
import com.join.mgps.dto.ArchiveResponseMessage;
import com.join.mgps.dto.ArchiveShopDataBean;
import java.util.Map;
import retrofit2.Call;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.POST;
/* compiled from: IRpcArchiveClient.java */
/* loaded from: classes4.dex */
public interface b {
    @FormUrlEncoded
    @POST("/market/commentArchive")
    Call<ArchiveEvaluteDataBean> a(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/market/deleteArchive ")
    Call<ArchiveResponseMain<ArchiveResponseMessage>> b(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/cloud/deleteArchive")
    Call<ArchiveResponseMain<ArchiveResponseMessage>> c(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/market/downloadArchive")
    Call<ArchiveDownDataBean> d(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/market/deleteMyBuy")
    Call<ArchiveResponseMain<ArchiveResponseMessage>> e(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/market/myBuyArchiveV2")
    Call<ArchiveShopDataBean> f(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/market/archiveListV2")
    Call<ArchiveShopDataBean> g(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/cloud/archiveList")
    Call<ArchiveDataBean> h(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/cloud/archiveStat")
    Call<ArchiveNumDataBean> i(@FieldMap Map<String, String> map);
}
