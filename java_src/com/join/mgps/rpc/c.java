package com.join.mgps.rpc;

import com.join.mgps.dto.ArchiveDataBean;
import com.join.mgps.dto.ArchiveDownDataBean;
import com.join.mgps.dto.ArchiveEvaluteDataBean;
import com.join.mgps.dto.ArchiveNumDataBean;
import com.join.mgps.dto.ArchiveResponseMain;
import com.join.mgps.dto.ArchiveResponseMessage;
import com.join.mgps.dto.ArchiveShopDataBean;
import java.util.Map;
import retrofit2.http.Body;
import retrofit2.http.FieldMap;
import retrofit2.http.POST;
/* compiled from: RpcArchiveClient.java */
/* loaded from: classes4.dex */
public interface c {
    @POST("/market/commentArchive")
    ArchiveEvaluteDataBean a(@FieldMap Map<String, String> map);

    @POST("/market/deleteArchive ")
    ArchiveResponseMain<ArchiveResponseMessage> b(@FieldMap Map<String, String> map);

    @POST("/cloud/deleteArchive")
    ArchiveResponseMain<ArchiveResponseMessage> c(@FieldMap Map<String, String> map);

    @POST("/market/downloadArchive")
    ArchiveDownDataBean d(@FieldMap Map<String, String> map);

    @POST("/market/deleteMyBuy")
    ArchiveResponseMain<ArchiveResponseMessage> e(@FieldMap Map<String, String> map);

    @POST("/cloud/archiveStat")
    ArchiveNumDataBean f(@Body Map<String, String> map);

    @POST("/market/archiveListV2")
    ArchiveShopDataBean g(@Body Map<String, String> map);

    @POST("/cloud/archiveList")
    ArchiveDataBean h(@Body Map<String, String> map);

    @POST("/market/myBuyArchiveV2")
    ArchiveShopDataBean i(@Body Map<String, String> map);
}
