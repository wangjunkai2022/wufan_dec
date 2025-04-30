package com.join.kotlin.http.api;

import com.join.kotlin.ui.account.modle.UnThirdPartRequest;
import com.join.kotlin.ui.modleregin.modle.BtReginResultMain;
import com.join.kotlin.ui.modleregin.modle.MustplayItemNetBean;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: RpcJavaApiForKotlin.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0019\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H§@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J+\u0010\t\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\b0\u00022\f\b\u0001\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0006H§@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ/\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\b0\u00022\u000e\b\u0001\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0006H§@ø\u0001\u0000¢\u0006\u0004\b\r\u0010\nJ)\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00022\u000e\b\u0001\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0006H§@ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\nJ#\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u0010H§@ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, d2 = {"Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;", "", "Lcom/join/mgps/dto/ResponseModel;", "", "getUserData", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/join/mgps/dto/RequestModel;", "requestMain", "", "getRankingList", "(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/join/mgps/dto/RequestGameIdArgs;", "Lcom/join/kotlin/ui/modleregin/modle/MustplayItemNetBean;", "getMustplayDatas", "Lcom/join/kotlin/ui/modleregin/modle/BtReginResultMain;", "getBtReginDatas", "Lcom/join/kotlin/ui/account/modle/UnThirdPartRequest;", "", "unbindThirdfParty", "(Lcom/join/kotlin/ui/account/modle/UnThirdPartRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public interface RpcJavaApiForKotlin {
    @POST("/v6/btGame/areaList")
    @Nullable
    Object getBtReginDatas(@Body @NotNull RequestModel<RequestGameIdArgs> requestModel, @NotNull Continuation<? super ResponseModel<BtReginResultMain>> continuation);

    @POST("/v6/mustPlay/gameList")
    @Nullable
    Object getMustplayDatas(@Body @NotNull RequestModel<RequestGameIdArgs> requestModel, @NotNull Continuation<? super ResponseModel<List<MustplayItemNetBean>>> continuation);

    @POST("/v5/special_game_board/ranking_game_list")
    @Nullable
    Object getRankingList(@Body @NotNull RequestModel<?> requestModel, @NotNull Continuation<? super ResponseModel<List<?>>> continuation);

    @POST("")
    @Nullable
    Object getUserData(@NotNull Continuation<? super ResponseModel<String>> continuation);

    @POST("/thirdParty/account/unbind")
    @Nullable
    Object unbindThirdfParty(@Body @NotNull UnThirdPartRequest unThirdPartRequest, @NotNull Continuation<? super ResponseModel<Boolean>> continuation);
}
