package com.join.kotlin.ui.findgame;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.BaseAppCompatActivity;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.v4;
import com.join.kotlin.ui.findgame.CategoryDetailItemFragment;
import com.join.kotlin.ui.findgame.FindGameClassfyFragment;
import com.join.kotlin.ui.findgame.adapter.FindTypeListAdapter;
import com.join.kotlin.ui.findgame.data.CategoryRequest;
import com.join.kotlin.ui.findgame.data.CategroyIntentItemData;
import com.join.kotlin.ui.findgame.data.GameSubTypeData;
import com.join.kotlin.ui.findgame.data.GameTypeData;
import com.join.kotlin.ui.findgame.data.TagData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.activity.w1;
import com.join.mgps.customview.SlidingTabLayout6;
import com.join.mgps.customview.d0;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.pref.PrefDef_;
import com.psk.kotlin.ext.CommonExtKt;
import com.psk.kotlin.util.CommonListMainData;
import com.psk.kotlin.util.GridSpacingItemDecoration;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CategoryDetailListActivity.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\bv\u0010wJ\b\u0010\u0004\u001a\u00020\u0003H\u0002J\b\u0010\u0005\u001a\u00020\u0003H\u0002J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u001e\u0010\u000e\u001a\u00020\u00032\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\r\u001a\u00020\fH\u0002J\b\u0010\u000f\u001a\u00020\u0003H\u0002J\u0018\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\fH\u0002J\b\u0010\u0013\u001a\u00020\u0003H\u0002J\b\u0010\u0014\u001a\u00020\u0003H\u0002J\u0012\u0010\u0017\u001a\u00020\u00032\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0014J\u0006\u0010\u0018\u001a\u00020\u0003J\u0012\u0010\u001b\u001a\u00020\u00032\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016R\"\u0010\u001d\u001a\u00020\u001c8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\"\u0010#\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\"\u0010)\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010$\u001a\u0004\b*\u0010&\"\u0004\b+\u0010(R(\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\"\u00102\u001a\u0002018\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\"\u00108\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\"\u0010?\u001a\u00020>8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\"\u0010E\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bE\u0010$\u001a\u0004\bF\u0010&\"\u0004\bG\u0010(R\"\u0010H\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bH\u0010$\u001a\u0004\bI\u0010&\"\u0004\bJ\u0010(R2\u0010N\u001a\u0012\u0012\u0004\u0012\u00020L0Kj\b\u0012\u0004\u0012\u00020L`M8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bN\u0010O\u001a\u0004\bP\u0010Q\"\u0004\bR\u0010SR\"\u0010U\u001a\u00020T8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bU\u0010V\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR\"\u0010\\\u001a\u00020[8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\\\u0010]\u001a\u0004\b^\u0010_\"\u0004\b`\u0010aR\"\u0010b\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bb\u0010$\u001a\u0004\bc\u0010&\"\u0004\bd\u0010(R\"\u0010f\u001a\u00020e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bf\u0010g\u001a\u0004\bh\u0010i\"\u0004\bj\u0010kR(\u0010l\u001a\b\u0012\u0004\u0012\u00020e0\t8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bl\u0010,\u001a\u0004\bm\u0010.\"\u0004\bn\u00100R\"\u0010p\u001a\u00020o8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bp\u0010q\u001a\u0004\br\u0010s\"\u0004\bt\u0010u¨\u0006x"}, d2 = {"Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;", "Lcom/BaseAppCompatActivity;", "Landroid/view/View$OnClickListener;", "", "initView", "showFilterLayout", "", "id", "showTypeList", "", "Lcom/psk/kotlin/util/CommonListMainData;", "datas", "Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;", "type", "onfindTypeSelected", "updateSelectedTagList", "Landroid/widget/TextView;", "textview", "updateSelectedTagitem", "updateTitle", "updateRequestArgs", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "reLoadDatas", "Landroid/view/View;", "v", "onClick", "Landroid/content/Context;", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "featureType", "Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;", "getFeatureType", "()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;", "setFeatureType", "(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V", "gameType", "getGameType", "setGameType", "Ljava/util/List;", "getDatas", "()Ljava/util/List;", "setDatas", "(Ljava/util/List;)V", "Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;", "findTypeAdapter", "Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;", "getFindTypeAdapter", "()Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;", "setFindTypeAdapter", "(Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;)V", "page", "I", "getPage", "()I", "setPage", "(I)V", "Lcom/join/kotlin/ui/findgame/data/TagData;", "gameSortType", "Lcom/join/kotlin/ui/findgame/data/TagData;", "getGameSortType", "()Lcom/join/kotlin/ui/findgame/data/TagData;", "setGameSortType", "(Lcom/join/kotlin/ui/findgame/data/TagData;)V", "playType", "getPlayType", "setPlayType", "themeType", "getThemeType", "setThemeType", "Ljava/util/ArrayList;", "Landroidx/fragment/app/Fragment;", "Lkotlin/collections/ArrayList;", "fragments", "Ljava/util/ArrayList;", "getFragments", "()Ljava/util/ArrayList;", "setFragments", "(Ljava/util/ArrayList;)V", "Lcom/join/kotlin/ui/findgame/data/CategoryRequest;", "requestArgs", "Lcom/join/kotlin/ui/findgame/data/CategoryRequest;", "getRequestArgs", "()Lcom/join/kotlin/ui/findgame/data/CategoryRequest;", "setRequestArgs", "(Lcom/join/kotlin/ui/findgame/data/CategoryRequest;)V", "Lcom/join/android/app/mgsim/wufun/databinding/v4;", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/v4;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/v4;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/v4;)V", "modelType", "getModelType", "setModelType", "Lcom/join/kotlin/ui/findgame/data/GameTypeData;", "tabType", "Lcom/join/kotlin/ui/findgame/data/GameTypeData;", "getTabType", "()Lcom/join/kotlin/ui/findgame/data/GameTypeData;", "setTabType", "(Lcom/join/kotlin/ui/findgame/data/GameTypeData;)V", "gameTypeList", "getGameTypeList", "setGameTypeList", "Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;", "leftTypeAdapter", "Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;", "getLeftTypeAdapter", "()Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;", "setLeftTypeAdapter", "(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;)V", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class CategoryDetailListActivity extends BaseAppCompatActivity implements View.OnClickListener {
    public v4 binding;
    public Context context;
    public FindTypeListAdapter findTypeAdapter;
    public List<GameTypeData> gameTypeList;
    public FindGameClassfyFragment.TabRecycleAdapter leftTypeAdapter;
    @NotNull
    private CategoryRequest requestArgs = new CategoryRequest();
    private int page = 1;
    @NotNull
    private GameSubTypeData featureType = new GameSubTypeData();
    @NotNull
    private TagData gameSortType = new TagData(1, 1, "综合");
    @NotNull
    private GameSubTypeData gameType = new GameSubTypeData();
    @NotNull
    private GameSubTypeData modelType = new GameSubTypeData();
    @NotNull
    private GameSubTypeData playType = new GameSubTypeData();
    @NotNull
    private GameSubTypeData themeType = new GameSubTypeData();
    @NotNull
    private GameTypeData tabType = new GameTypeData();
    @NotNull
    private ArrayList<Fragment> fragments = new ArrayList<>();
    @NotNull
    private List<CommonListMainData> datas = new ArrayList();

    private final void initView() {
        Object obj;
        List<TagData> listOf;
        int collectionSizeOrDefault;
        boolean z3;
        Object obj2;
        Object obj3;
        List<GameSubTypeData> sub_game_type;
        Object obj4;
        boolean z4;
        boolean z5;
        List<GameSubTypeData> sub_game_type2;
        Object obj5;
        boolean z6;
        boolean z7;
        Object obj6;
        List<GameSubTypeData> sub_game_type3;
        Object obj7;
        boolean z8;
        boolean z9;
        Object obj8;
        List<GameSubTypeData> sub_game_type4;
        Object obj9;
        boolean z10;
        boolean z11;
        Object obj10;
        List<GameSubTypeData> sub_game_type5;
        Object obj11;
        boolean z12;
        boolean z13;
        Object obj12;
        List<GameSubTypeData> sub_game_type6;
        Object obj13;
        boolean z14;
        boolean z15;
        this.tabType.setSelected(true);
        this.tabType.setId(1);
        this.tabType.setType(1);
        v4 v4Var = this.binding;
        if (v4Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        LinearLayout linearLayout = v4Var.f25736o;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.typeMainLayout");
        CommonExtKt.onClick(linearLayout, new Function0<Unit>() { // from class: com.join.kotlin.ui.findgame.CategoryDetailListActivity$initView$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }
        });
        switch (getIntent().getIntExtra("typeId", 0)) {
            case 1:
            case 2:
                this.tabType.setId(1);
                this.tabType.setType(1);
                this.requestArgs.setModelType(getIntent().getIntExtra("tagId", 0));
                List<GameTypeData> list = this.gameTypeList;
                if (list == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
                }
                Iterator<T> it2 = list.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        obj2 = it2.next();
                        if (((GameTypeData) obj2).getType() == 1) {
                            z7 = true;
                            continue;
                        } else {
                            z7 = false;
                            continue;
                        }
                        if (z7) {
                        }
                    } else {
                        obj2 = null;
                    }
                }
                GameTypeData gameTypeData = (GameTypeData) obj2;
                if (gameTypeData != null && (sub_game_type2 = gameTypeData.getSub_game_type()) != null) {
                    Iterator<T> it3 = sub_game_type2.iterator();
                    while (true) {
                        if (it3.hasNext()) {
                            obj5 = it3.next();
                            GameSubTypeData it4 = (GameSubTypeData) obj5;
                            Intrinsics.checkNotNullExpressionValue(it4, "it");
                            if (it4.getId() == this.requestArgs.getModelType()) {
                                z6 = true;
                                continue;
                            } else {
                                z6 = false;
                                continue;
                            }
                            if (z6) {
                            }
                        } else {
                            obj5 = null;
                        }
                    }
                    GameSubTypeData gameSubTypeData = (GameSubTypeData) obj5;
                    if (gameSubTypeData != null) {
                        gameSubTypeData.setSelected(true);
                        this.modelType = gameSubTypeData;
                        Unit unit = Unit.INSTANCE;
                    }
                }
                int intExtra = getIntent().getIntExtra("tagId2", 0);
                if (intExtra > 0) {
                    this.tabType.setId(3);
                    this.tabType.setType(3);
                    this.requestArgs.setGameType(intExtra);
                    List<GameTypeData> list2 = this.gameTypeList;
                    if (list2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
                    }
                    Iterator<T> it5 = list2.iterator();
                    while (true) {
                        if (it5.hasNext()) {
                            obj3 = it5.next();
                            if (((GameTypeData) obj3).getType() == 3) {
                                z5 = true;
                                continue;
                            } else {
                                z5 = false;
                                continue;
                            }
                            if (z5) {
                            }
                        } else {
                            obj3 = null;
                        }
                    }
                    GameTypeData gameTypeData2 = (GameTypeData) obj3;
                    if (gameTypeData2 != null && (sub_game_type = gameTypeData2.getSub_game_type()) != null) {
                        Iterator<T> it6 = sub_game_type.iterator();
                        while (true) {
                            if (it6.hasNext()) {
                                obj4 = it6.next();
                                GameSubTypeData it7 = (GameSubTypeData) obj4;
                                Intrinsics.checkNotNullExpressionValue(it7, "it");
                                if (it7.getId() == this.requestArgs.getGameType()) {
                                    z4 = true;
                                    continue;
                                } else {
                                    z4 = false;
                                    continue;
                                }
                                if (z4) {
                                }
                            } else {
                                obj4 = null;
                            }
                        }
                        GameSubTypeData gameSubTypeData2 = (GameSubTypeData) obj4;
                        if (gameSubTypeData2 != null) {
                            gameSubTypeData2.setSelected(true);
                            this.gameType = gameSubTypeData2;
                            Unit unit2 = Unit.INSTANCE;
                            break;
                        }
                    }
                }
                break;
            case 3:
                this.tabType.setId(3);
                this.tabType.setType(3);
                this.requestArgs.setGameType(getIntent().getIntExtra("tagId", 0));
                List<GameTypeData> list3 = this.gameTypeList;
                if (list3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
                }
                Iterator<T> it8 = list3.iterator();
                while (true) {
                    if (it8.hasNext()) {
                        obj6 = it8.next();
                        if (((GameTypeData) obj6).getType() == 3) {
                            z9 = true;
                            continue;
                        } else {
                            z9 = false;
                            continue;
                        }
                        if (z9) {
                        }
                    } else {
                        obj6 = null;
                    }
                }
                GameTypeData gameTypeData3 = (GameTypeData) obj6;
                if (gameTypeData3 != null && (sub_game_type3 = gameTypeData3.getSub_game_type()) != null) {
                    Iterator<T> it9 = sub_game_type3.iterator();
                    while (true) {
                        if (it9.hasNext()) {
                            obj7 = it9.next();
                            GameSubTypeData it10 = (GameSubTypeData) obj7;
                            Intrinsics.checkNotNullExpressionValue(it10, "it");
                            if (it10.getId() == this.requestArgs.getGameType()) {
                                z8 = true;
                                continue;
                            } else {
                                z8 = false;
                                continue;
                            }
                            if (z8) {
                            }
                        } else {
                            obj7 = null;
                        }
                    }
                    GameSubTypeData gameSubTypeData3 = (GameSubTypeData) obj7;
                    if (gameSubTypeData3 != null) {
                        gameSubTypeData3.setSelected(true);
                        this.gameType = gameSubTypeData3;
                        Unit unit3 = Unit.INSTANCE;
                        break;
                    }
                }
                break;
            case 4:
                this.tabType.setId(4);
                this.tabType.setType(4);
                this.requestArgs.setThemeType(getIntent().getIntExtra("tagId", 0));
                List<GameTypeData> list4 = this.gameTypeList;
                if (list4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
                }
                Iterator<T> it11 = list4.iterator();
                while (true) {
                    if (it11.hasNext()) {
                        obj8 = it11.next();
                        if (((GameTypeData) obj8).getType() == 4) {
                            z11 = true;
                            continue;
                        } else {
                            z11 = false;
                            continue;
                        }
                        if (z11) {
                        }
                    } else {
                        obj8 = null;
                    }
                }
                GameTypeData gameTypeData4 = (GameTypeData) obj8;
                if (gameTypeData4 != null && (sub_game_type4 = gameTypeData4.getSub_game_type()) != null) {
                    Iterator<T> it12 = sub_game_type4.iterator();
                    while (true) {
                        if (it12.hasNext()) {
                            obj9 = it12.next();
                            GameSubTypeData it13 = (GameSubTypeData) obj9;
                            Intrinsics.checkNotNullExpressionValue(it13, "it");
                            if (it13.getId() == this.requestArgs.getThemeType()) {
                                z10 = true;
                                continue;
                            } else {
                                z10 = false;
                                continue;
                            }
                            if (z10) {
                            }
                        } else {
                            obj9 = null;
                        }
                    }
                    GameSubTypeData gameSubTypeData4 = (GameSubTypeData) obj9;
                    if (gameSubTypeData4 != null) {
                        gameSubTypeData4.setSelected(true);
                        this.themeType = gameSubTypeData4;
                        Unit unit4 = Unit.INSTANCE;
                        break;
                    }
                }
                break;
            case 5:
                this.tabType.setId(5);
                this.tabType.setType(5);
                this.requestArgs.setPlayType(getIntent().getIntExtra("tagId", 0));
                List<GameTypeData> list5 = this.gameTypeList;
                if (list5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
                }
                Iterator<T> it14 = list5.iterator();
                while (true) {
                    if (it14.hasNext()) {
                        obj10 = it14.next();
                        if (((GameTypeData) obj10).getType() == 5) {
                            z13 = true;
                            continue;
                        } else {
                            z13 = false;
                            continue;
                        }
                        if (z13) {
                        }
                    } else {
                        obj10 = null;
                    }
                }
                GameTypeData gameTypeData5 = (GameTypeData) obj10;
                if (gameTypeData5 != null && (sub_game_type5 = gameTypeData5.getSub_game_type()) != null) {
                    Iterator<T> it15 = sub_game_type5.iterator();
                    while (true) {
                        if (it15.hasNext()) {
                            obj11 = it15.next();
                            GameSubTypeData it16 = (GameSubTypeData) obj11;
                            Intrinsics.checkNotNullExpressionValue(it16, "it");
                            if (it16.getId() == this.requestArgs.getPlayType()) {
                                z12 = true;
                                continue;
                            } else {
                                z12 = false;
                                continue;
                            }
                            if (z12) {
                            }
                        } else {
                            obj11 = null;
                        }
                    }
                    GameSubTypeData gameSubTypeData5 = (GameSubTypeData) obj11;
                    if (gameSubTypeData5 != null) {
                        gameSubTypeData5.setSelected(true);
                        this.playType = gameSubTypeData5;
                        Unit unit5 = Unit.INSTANCE;
                        break;
                    }
                }
                break;
            case 6:
                this.tabType.setId(6);
                this.tabType.setType(6);
                this.requestArgs.setFeatureType(getIntent().getIntExtra("tagId", 0));
                List<GameTypeData> list6 = this.gameTypeList;
                if (list6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
                }
                Iterator<T> it17 = list6.iterator();
                while (true) {
                    if (it17.hasNext()) {
                        obj12 = it17.next();
                        if (((GameTypeData) obj12).getType() == 6) {
                            z15 = true;
                            continue;
                        } else {
                            z15 = false;
                            continue;
                        }
                        if (z15) {
                        }
                    } else {
                        obj12 = null;
                    }
                }
                GameTypeData gameTypeData6 = (GameTypeData) obj12;
                if (gameTypeData6 != null && (sub_game_type6 = gameTypeData6.getSub_game_type()) != null) {
                    Iterator<T> it18 = sub_game_type6.iterator();
                    while (true) {
                        if (it18.hasNext()) {
                            obj13 = it18.next();
                            GameSubTypeData it19 = (GameSubTypeData) obj13;
                            Intrinsics.checkNotNullExpressionValue(it19, "it");
                            if (it19.getId() == this.requestArgs.getFeatureType()) {
                                z14 = true;
                                continue;
                            } else {
                                z14 = false;
                                continue;
                            }
                            if (z14) {
                            }
                        } else {
                            obj13 = null;
                        }
                    }
                    GameSubTypeData gameSubTypeData6 = (GameSubTypeData) obj13;
                    if (gameSubTypeData6 != null) {
                        gameSubTypeData6.setSelected(true);
                        this.featureType = gameSubTypeData6;
                        Unit unit6 = Unit.INSTANCE;
                        break;
                    }
                }
                break;
        }
        updateSelectedTagList();
        List<GameTypeData> list7 = this.gameTypeList;
        if (list7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
        }
        Iterator<T> it20 = list7.iterator();
        while (true) {
            if (it20.hasNext()) {
                Object next = it20.next();
                if (((GameTypeData) next).getId() == this.tabType.getId()) {
                    z3 = true;
                    continue;
                } else {
                    z3 = false;
                    continue;
                }
                obj = z3 ? next : null;
            }
        }
        GameTypeData gameTypeData7 = (GameTypeData) obj;
        if (gameTypeData7 != null) {
            gameTypeData7.setSelected(true);
        }
        v4 v4Var2 = this.binding;
        if (v4Var2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ImageView imageView = v4Var2.f25735n.f24814b;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.titleLayout.backImage");
        CommonExtKt.onClick(imageView, new Function0<Unit>() { // from class: com.join.kotlin.ui.findgame.CategoryDetailListActivity$initView$21
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                CategoryDetailListActivity.this.finish();
            }
        });
        v4 v4Var3 = this.binding;
        if (v4Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        TextView textView = v4Var3.f25735n.f24816d;
        Intrinsics.checkNotNullExpressionValue(textView, "binding.titleLayout.titleTextview");
        textView.setText(getIntent().getStringExtra("tagName"));
        CategoryRequest categoryRequest = this.requestArgs;
        Context context = this.context;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("context");
        }
        AccountUtil_ instance_ = AccountUtil_.getInstance_(context);
        Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(context)");
        AccountBean accountData = instance_.getAccountData();
        Intrinsics.checkNotNullExpressionValue(accountData, "AccountUtil_.getInstance_(context).accountData");
        categoryRequest.setUid(accountData.getUid());
        v4 v4Var4 = this.binding;
        if (v4Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        TextView textView2 = v4Var4.f25725d;
        Intrinsics.checkNotNullExpressionValue(textView2, "binding.filter");
        CommonExtKt.onClick(textView2, new Function0<Unit>() { // from class: com.join.kotlin.ui.findgame.CategoryDetailListActivity$initView$22
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                CategoryDetailListActivity.this.showFilterLayout();
            }
        });
        v4 v4Var5 = this.binding;
        if (v4Var5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        RecyclerView recyclerView = v4Var5.f25733l;
        Intrinsics.checkNotNullExpressionValue(recyclerView, "binding.tabRecyclerview");
        Context context2 = this.context;
        if (context2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("context");
        }
        recyclerView.setLayoutManager(new LinearLayoutManager(context2));
        v4 v4Var6 = this.binding;
        if (v4Var6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        RecyclerView recyclerView2 = v4Var6.f25737p;
        Intrinsics.checkNotNullExpressionValue(recyclerView2, "binding.typeRecyclerview");
        Context context3 = this.context;
        if (context3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("context");
        }
        recyclerView2.setLayoutManager(new LinearLayoutManager(context3));
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TagData[]{new TagData(1, "综合"), new TagData(2, "最新"), new TagData(3, "评分")});
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(listOf, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TagData tagData : listOf) {
            arrayList.add(tagData.getTitle());
        }
        CategroyIntentItemData categroyIntentItemData = new CategroyIntentItemData(this.gameType, this.modelType, this.playType, this.themeType, this.featureType);
        ArrayList<Fragment> arrayList2 = this.fragments;
        CategoryDetailItemFragment.Companion companion = CategoryDetailItemFragment.Companion;
        arrayList2.add(companion.newInstance(1, categroyIntentItemData));
        this.fragments.add(companion.newInstance(2, categroyIntentItemData));
        this.fragments.add(companion.newInstance(3, categroyIntentItemData));
        v4 v4Var7 = this.binding;
        if (v4Var7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ViewPager viewPager = v4Var7.f25738q;
        Intrinsics.checkNotNullExpressionValue(viewPager, "binding.viewPager");
        viewPager.setAdapter(new d0(getSupportFragmentManager(), this.fragments, arrayList));
        v4 v4Var8 = this.binding;
        if (v4Var8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ViewPager viewPager2 = v4Var8.f25738q;
        Intrinsics.checkNotNullExpressionValue(viewPager2, "binding.viewPager");
        viewPager2.setOffscreenPageLimit(3);
        v4 v4Var9 = this.binding;
        if (v4Var9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        SlidingTabLayout6 slidingTabLayout6 = v4Var9.f25723b;
        v4 v4Var10 = this.binding;
        if (v4Var10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        slidingTabLayout6.setViewPager(v4Var10.f25738q);
        Intrinsics.checkNotNull(this);
        this.findTypeAdapter = new FindTypeListAdapter(this, this.tabType.getId(), this.datas, new FindTypeListAdapter.OnItenSelected() { // from class: com.join.kotlin.ui.findgame.CategoryDetailListActivity$initView$23
            @Override // com.join.kotlin.ui.findgame.adapter.FindTypeListAdapter.OnItenSelected
            public void onItemselected(@NotNull GameSubTypeData type) {
                Intrinsics.checkNotNullParameter(type, "type");
                CategoryDetailListActivity categoryDetailListActivity = CategoryDetailListActivity.this;
                categoryDetailListActivity.onfindTypeSelected(categoryDetailListActivity.getDatas(), type);
            }
        });
        v4 v4Var11 = this.binding;
        if (v4Var11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        RecyclerView recyclerView3 = v4Var11.f25737p;
        Intrinsics.checkNotNullExpressionValue(recyclerView3, "binding.typeRecyclerview");
        FindTypeListAdapter findTypeListAdapter = this.findTypeAdapter;
        if (findTypeListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("findTypeAdapter");
        }
        recyclerView3.setAdapter(findTypeListAdapter);
        FindGameClassfyFragment.OnSelectedTabListener onSelectedTabListener = new FindGameClassfyFragment.OnSelectedTabListener() { // from class: com.join.kotlin.ui.findgame.CategoryDetailListActivity$initView$24
            @Override // com.join.kotlin.ui.findgame.FindGameClassfyFragment.OnSelectedTabListener
            public void onSelected(int i2) {
                CategoryDetailListActivity.this.getTabType().setId(i2);
                CategoryDetailListActivity.this.showTypeList(i2);
            }
        };
        List<GameTypeData> list8 = this.gameTypeList;
        if (list8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
        }
        this.leftTypeAdapter = new FindGameClassfyFragment.TabRecycleAdapter(this, onSelectedTabListener, list8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onfindTypeSelected(List<CommonListMainData> list, GameSubTypeData gameSubTypeData) {
        for (CommonListMainData commonListMainData : list) {
            Object any = commonListMainData.getAny();
            Objects.requireNonNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.GameSubTypeData");
            GameSubTypeData gameSubTypeData2 = (GameSubTypeData) any;
            if (gameSubTypeData2.getId() != gameSubTypeData.getId()) {
                gameSubTypeData2.setSelected(gameSubTypeData2.getId() == gameSubTypeData.getId());
            } else {
                gameSubTypeData2.setSelected(!gameSubTypeData2.isSelected());
            }
        }
        FindTypeListAdapter findTypeListAdapter = this.findTypeAdapter;
        if (findTypeListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("findTypeAdapter");
        }
        findTypeListAdapter.notifyDataSetChanged();
        switch (this.tabType.getId()) {
            case 1:
            case 2:
                if (!gameSubTypeData.isSelected()) {
                    gameSubTypeData = new GameSubTypeData();
                }
                this.modelType = gameSubTypeData;
                break;
            case 3:
                if (!gameSubTypeData.isSelected()) {
                    gameSubTypeData = new GameSubTypeData();
                }
                this.gameType = gameSubTypeData;
                break;
            case 4:
                if (!gameSubTypeData.isSelected()) {
                    gameSubTypeData = new GameSubTypeData();
                }
                this.themeType = gameSubTypeData;
                break;
            case 5:
                if (!gameSubTypeData.isSelected()) {
                    gameSubTypeData = new GameSubTypeData();
                }
                this.playType = gameSubTypeData;
                break;
            case 6:
                if (!gameSubTypeData.isSelected()) {
                    gameSubTypeData = new GameSubTypeData();
                }
                this.featureType = gameSubTypeData;
                break;
        }
        updateSelectedTagList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showFilterLayout() {
        v4 v4Var = this.binding;
        if (v4Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        LinearLayout linearLayout = v4Var.f25736o;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.typeMainLayout");
        if (linearLayout.getVisibility() == 0) {
            v4 v4Var2 = this.binding;
            if (v4Var2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            LinearLayout linearLayout2 = v4Var2.f25736o;
            Intrinsics.checkNotNullExpressionValue(linearLayout2, "binding.typeMainLayout");
            linearLayout2.setVisibility(8);
            return;
        }
        v4 v4Var3 = this.binding;
        if (v4Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        LinearLayout linearLayout3 = v4Var3.f25736o;
        Intrinsics.checkNotNullExpressionValue(linearLayout3, "binding.typeMainLayout");
        linearLayout3.setVisibility(0);
        v4 v4Var4 = this.binding;
        if (v4Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        RecyclerView recyclerView = v4Var4.f25733l;
        Intrinsics.checkNotNullExpressionValue(recyclerView, "binding.tabRecyclerview");
        FindGameClassfyFragment.TabRecycleAdapter tabRecycleAdapter = this.leftTypeAdapter;
        if (tabRecycleAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("leftTypeAdapter");
        }
        recyclerView.setAdapter(tabRecycleAdapter);
        showTypeList(this.tabType.getId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showTypeList(int i2) {
        this.datas.clear();
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.wdp16);
        if (i2 == 1) {
            v4 v4Var = this.binding;
            if (v4Var == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            RecyclerView recyclerView = v4Var.f25737p;
            Intrinsics.checkNotNullExpressionValue(recyclerView, "binding.typeRecyclerview");
            Context context = this.context;
            if (context == null) {
                Intrinsics.throwUninitializedPropertyAccessException("context");
            }
            recyclerView.setLayoutManager(new GridLayoutManager(context, 2));
            while (true) {
                v4 v4Var2 = this.binding;
                if (v4Var2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                RecyclerView recyclerView2 = v4Var2.f25737p;
                Intrinsics.checkNotNullExpressionValue(recyclerView2, "binding.typeRecyclerview");
                if (recyclerView2.getItemDecorationCount() <= 0) {
                    break;
                }
                v4 v4Var3 = this.binding;
                if (v4Var3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                v4Var3.f25737p.removeItemDecorationAt(0);
            }
            v4 v4Var4 = this.binding;
            if (v4Var4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            v4Var4.f25737p.addItemDecoration(new GridSpacingItemDecoration(2, dimensionPixelOffset, false));
            List<GameTypeData> list = this.gameTypeList;
            if (list == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
            }
            ArrayList<GameTypeData> arrayList = new ArrayList();
            for (Object obj : list) {
                if (((GameTypeData) obj).getType() == i2) {
                    arrayList.add(obj);
                }
            }
            ArrayList<GameSubTypeData> arrayList2 = new ArrayList();
            for (GameTypeData gameTypeData : arrayList) {
                List<GameSubTypeData> sub_game_type = gameTypeData.getSub_game_type();
                Intrinsics.checkNotNull(sub_game_type);
                CollectionsKt__MutableCollectionsKt.addAll(arrayList2, sub_game_type);
            }
            for (GameSubTypeData e4 : arrayList2) {
                List<CommonListMainData> list2 = this.datas;
                Intrinsics.checkNotNullExpressionValue(e4, "e");
                list2.add(new CommonListMainData(3, e4, null, null, 12, null));
            }
        } else if (i2 == 2 || i2 == 3) {
            v4 v4Var5 = this.binding;
            if (v4Var5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            RecyclerView recyclerView3 = v4Var5.f25737p;
            Intrinsics.checkNotNullExpressionValue(recyclerView3, "binding.typeRecyclerview");
            Context context2 = this.context;
            if (context2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("context");
            }
            recyclerView3.setLayoutManager(new GridLayoutManager(context2, 1));
            while (true) {
                v4 v4Var6 = this.binding;
                if (v4Var6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                RecyclerView recyclerView4 = v4Var6.f25737p;
                Intrinsics.checkNotNullExpressionValue(recyclerView4, "binding.typeRecyclerview");
                if (recyclerView4.getItemDecorationCount() <= 0) {
                    break;
                }
                v4 v4Var7 = this.binding;
                if (v4Var7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                v4Var7.f25737p.removeItemDecorationAt(0);
            }
            v4 v4Var8 = this.binding;
            if (v4Var8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            v4Var8.f25737p.addItemDecoration(new GridSpacingItemDecoration(1, dimensionPixelOffset, false));
            List<GameTypeData> list3 = this.gameTypeList;
            if (list3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
            }
            ArrayList<GameTypeData> arrayList3 = new ArrayList();
            for (Object obj2 : list3) {
                if (((GameTypeData) obj2).getType() == i2) {
                    arrayList3.add(obj2);
                }
            }
            ArrayList<GameSubTypeData> arrayList4 = new ArrayList();
            for (GameTypeData gameTypeData2 : arrayList3) {
                List<GameSubTypeData> sub_game_type2 = gameTypeData2.getSub_game_type();
                Intrinsics.checkNotNull(sub_game_type2);
                CollectionsKt__MutableCollectionsKt.addAll(arrayList4, sub_game_type2);
            }
            for (GameSubTypeData e5 : arrayList4) {
                List<CommonListMainData> list4 = this.datas;
                Intrinsics.checkNotNullExpressionValue(e5, "e");
                list4.add(new CommonListMainData(3, e5, null, null, 12, null));
            }
        } else if (i2 == 4 || i2 == 5 || i2 == 6) {
            v4 v4Var9 = this.binding;
            if (v4Var9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            RecyclerView recyclerView5 = v4Var9.f25737p;
            Intrinsics.checkNotNullExpressionValue(recyclerView5, "binding.typeRecyclerview");
            Context context3 = this.context;
            if (context3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("context");
            }
            recyclerView5.setLayoutManager(new GridLayoutManager(context3, 3));
            while (true) {
                v4 v4Var10 = this.binding;
                if (v4Var10 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                RecyclerView recyclerView6 = v4Var10.f25737p;
                Intrinsics.checkNotNullExpressionValue(recyclerView6, "binding.typeRecyclerview");
                if (recyclerView6.getItemDecorationCount() <= 0) {
                    break;
                }
                v4 v4Var11 = this.binding;
                if (v4Var11 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                v4Var11.f25737p.removeItemDecorationAt(0);
            }
            v4 v4Var12 = this.binding;
            if (v4Var12 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            v4Var12.f25737p.addItemDecoration(new GridSpacingItemDecoration(3, dimensionPixelOffset, false));
            List<GameTypeData> list5 = this.gameTypeList;
            if (list5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
            }
            ArrayList<GameTypeData> arrayList5 = new ArrayList();
            for (Object obj3 : list5) {
                if (((GameTypeData) obj3).getType() == i2) {
                    arrayList5.add(obj3);
                }
            }
            ArrayList<GameSubTypeData> arrayList6 = new ArrayList();
            for (GameTypeData gameTypeData3 : arrayList5) {
                List<GameSubTypeData> sub_game_type3 = gameTypeData3.getSub_game_type();
                Intrinsics.checkNotNull(sub_game_type3);
                CollectionsKt__MutableCollectionsKt.addAll(arrayList6, sub_game_type3);
            }
            for (GameSubTypeData e6 : arrayList6) {
                List<CommonListMainData> list6 = this.datas;
                Intrinsics.checkNotNullExpressionValue(e6, "e");
                list6.add(new CommonListMainData(7, e6, null, null, 12, null));
            }
        }
        FindTypeListAdapter findTypeListAdapter = this.findTypeAdapter;
        if (findTypeListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("findTypeAdapter");
        }
        findTypeListAdapter.updateDatas(i2);
    }

    private final void updateRequestArgs() {
        this.page = 1;
        this.requestArgs.setPage(1);
        this.requestArgs.resetData();
        CategoryRequest categoryRequest = this.requestArgs;
        Context context = this.context;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("context");
        }
        AccountUtil_ instance_ = AccountUtil_.getInstance_(context);
        Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(context)");
        AccountBean accountData = instance_.getAccountData();
        Intrinsics.checkNotNullExpressionValue(accountData, "AccountUtil_.getInstance_(context).accountData");
        categoryRequest.setUid(accountData.getUid());
        this.requestArgs.setModelType(this.modelType.getId());
        this.requestArgs.setGameType(this.gameType.getId());
        this.requestArgs.setThemeType(this.themeType.getId());
        this.requestArgs.setPlayType(this.playType.getId());
        this.requestArgs.setFeatureType(this.featureType.getId());
        this.requestArgs.setGameSortType(this.gameSortType.getId());
    }

    private final void updateSelectedTagList() {
        v4 v4Var = this.binding;
        if (v4Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        TextView textView = v4Var.f25728g;
        Intrinsics.checkNotNullExpressionValue(textView, "binding.modelTypeText");
        updateSelectedTagitem(textView, this.modelType);
        v4 v4Var2 = this.binding;
        if (v4Var2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        TextView textView2 = v4Var2.f25726e;
        Intrinsics.checkNotNullExpressionValue(textView2, "binding.gameTypeText");
        updateSelectedTagitem(textView2, this.gameType);
        v4 v4Var3 = this.binding;
        if (v4Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        TextView textView3 = v4Var3.f25734m;
        Intrinsics.checkNotNullExpressionValue(textView3, "binding.themeTypeText");
        updateSelectedTagitem(textView3, this.themeType);
        v4 v4Var4 = this.binding;
        if (v4Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        TextView textView4 = v4Var4.f25731j;
        Intrinsics.checkNotNullExpressionValue(textView4, "binding.playTypeText");
        updateSelectedTagitem(textView4, this.playType);
        v4 v4Var5 = this.binding;
        if (v4Var5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        TextView textView5 = v4Var5.f25724c;
        Intrinsics.checkNotNullExpressionValue(textView5, "binding.featureTypeText");
        updateSelectedTagitem(textView5, this.featureType);
    }

    private final void updateSelectedTagitem(TextView textView, GameSubTypeData gameSubTypeData) {
        textView.setText(gameSubTypeData.getTitle());
        if (gameSubTypeData.isSelected()) {
            textView.setVisibility(0);
        } else {
            textView.setVisibility(8);
        }
    }

    private final void updateTitle() {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        StringBuffer stringBuffer = new StringBuffer();
        List<GameTypeData> list = this.gameTypeList;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList<List> arrayList = new ArrayList(collectionSizeOrDefault);
        for (GameTypeData gameTypeData : list) {
            List<GameSubTypeData> sub_game_type = gameTypeData.getSub_game_type();
            Intrinsics.checkNotNull(sub_game_type);
            Intrinsics.checkNotNullExpressionValue(sub_game_type, "itx.sub_game_type!!");
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : sub_game_type) {
                GameSubTypeData it2 = (GameSubTypeData) obj;
                Intrinsics.checkNotNullExpressionValue(it2, "it");
                if (it2.isSelected()) {
                    arrayList2.add(obj);
                }
            }
            arrayList.add(arrayList2);
        }
        ArrayList<String> arrayList3 = new ArrayList();
        for (List<GameSubTypeData> list2 : arrayList) {
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            ArrayList arrayList4 = new ArrayList(collectionSizeOrDefault2);
            for (GameSubTypeData it3 : list2) {
                Intrinsics.checkNotNullExpressionValue(it3, "it");
                arrayList4.add(it3.getTitle());
            }
            CollectionsKt__MutableCollectionsKt.addAll(arrayList3, arrayList4);
        }
        if (!arrayList3.isEmpty()) {
            for (String str : arrayList3) {
                if (stringBuffer.length() < 16) {
                    stringBuffer.append(str);
                    stringBuffer.append("·");
                }
            }
            v4 v4Var = this.binding;
            if (v4Var == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            TextView textView = v4Var.f25735n.f24816d;
            Intrinsics.checkNotNullExpressionValue(textView, "binding.titleLayout.titleTextview");
            textView.setText(stringBuffer.substring(0, stringBuffer.length() - 1).toString());
            return;
        }
        v4 v4Var2 = this.binding;
        if (v4Var2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        TextView textView2 = v4Var2.f25735n.f24816d;
        Intrinsics.checkNotNullExpressionValue(textView2, "binding.titleLayout.titleTextview");
        textView2.setText(w1.f38447y0);
    }

    @NotNull
    public final v4 getBinding() {
        v4 v4Var = this.binding;
        if (v4Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return v4Var;
    }

    @NotNull
    public final Context getContext() {
        Context context = this.context;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("context");
        }
        return context;
    }

    @NotNull
    public final List<CommonListMainData> getDatas() {
        return this.datas;
    }

    @NotNull
    public final GameSubTypeData getFeatureType() {
        return this.featureType;
    }

    @NotNull
    public final FindTypeListAdapter getFindTypeAdapter() {
        FindTypeListAdapter findTypeListAdapter = this.findTypeAdapter;
        if (findTypeListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("findTypeAdapter");
        }
        return findTypeListAdapter;
    }

    @NotNull
    public final ArrayList<Fragment> getFragments() {
        return this.fragments;
    }

    @NotNull
    public final TagData getGameSortType() {
        return this.gameSortType;
    }

    @NotNull
    public final GameSubTypeData getGameType() {
        return this.gameType;
    }

    @NotNull
    public final List<GameTypeData> getGameTypeList() {
        List<GameTypeData> list = this.gameTypeList;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
        }
        return list;
    }

    @NotNull
    public final FindGameClassfyFragment.TabRecycleAdapter getLeftTypeAdapter() {
        FindGameClassfyFragment.TabRecycleAdapter tabRecycleAdapter = this.leftTypeAdapter;
        if (tabRecycleAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("leftTypeAdapter");
        }
        return tabRecycleAdapter;
    }

    @NotNull
    public final GameSubTypeData getModelType() {
        return this.modelType;
    }

    public final int getPage() {
        return this.page;
    }

    @NotNull
    public final GameSubTypeData getPlayType() {
        return this.playType;
    }

    @NotNull
    public final CategoryRequest getRequestArgs() {
        return this.requestArgs;
    }

    @NotNull
    public final GameTypeData getTabType() {
        return this.tabType;
    }

    @NotNull
    public final GameSubTypeData getThemeType() {
        return this.themeType;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        Intrinsics.checkNotNull(view);
        switch (view.getId()) {
            case R.id.featureTypeText /* 2131297422 */:
                this.featureType.setSelected(false);
                this.featureType = new GameSubTypeData();
                v4 v4Var = this.binding;
                if (v4Var == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                TextView textView = v4Var.f25724c;
                Intrinsics.checkNotNullExpressionValue(textView, "binding.featureTypeText");
                textView.setVisibility(8);
                break;
            case R.id.gameTypeText /* 2131297670 */:
                this.gameType.setSelected(false);
                this.gameType = new GameSubTypeData();
                v4 v4Var2 = this.binding;
                if (v4Var2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                TextView textView2 = v4Var2.f25726e;
                Intrinsics.checkNotNullExpressionValue(textView2, "binding.gameTypeText");
                textView2.setVisibility(8);
                break;
            case R.id.modelTypeText /* 2131298917 */:
                this.modelType.setSelected(false);
                this.modelType = new GameSubTypeData();
                v4 v4Var3 = this.binding;
                if (v4Var3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                TextView textView3 = v4Var3.f25728g;
                Intrinsics.checkNotNullExpressionValue(textView3, "binding.modelTypeText");
                textView3.setVisibility(8);
                break;
            case R.id.okButn /* 2131299165 */:
                updateRequestArgs();
                v4 v4Var4 = this.binding;
                if (v4Var4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                LinearLayout linearLayout = v4Var4.f25736o;
                Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.typeMainLayout");
                linearLayout.setVisibility(8);
                for (Fragment fragment : this.fragments) {
                    Objects.requireNonNull(fragment, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.CategoryDetailItemFragment");
                    ((CategoryDetailItemFragment) fragment).updateDatas(this.featureType, this.gameType, this.modelType, this.playType, this.themeType);
                }
                updateTitle();
                break;
            case R.id.playTypeText /* 2131299360 */:
                this.playType.setSelected(false);
                this.playType = new GameSubTypeData();
                v4 v4Var5 = this.binding;
                if (v4Var5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                TextView textView4 = v4Var5.f25731j;
                Intrinsics.checkNotNullExpressionValue(textView4, "binding.playTypeText");
                textView4.setVisibility(8);
                break;
            case R.id.resetButn /* 2131299618 */:
                this.modelType.setSelected(false);
                this.modelType = new GameSubTypeData();
                v4 v4Var6 = this.binding;
                if (v4Var6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                TextView textView5 = v4Var6.f25728g;
                Intrinsics.checkNotNullExpressionValue(textView5, "binding.modelTypeText");
                textView5.setVisibility(8);
                this.gameType.setSelected(false);
                this.gameType = new GameSubTypeData();
                v4 v4Var7 = this.binding;
                if (v4Var7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                TextView textView6 = v4Var7.f25726e;
                Intrinsics.checkNotNullExpressionValue(textView6, "binding.gameTypeText");
                textView6.setVisibility(8);
                this.themeType.setSelected(false);
                this.themeType = new GameSubTypeData();
                v4 v4Var8 = this.binding;
                if (v4Var8 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                TextView textView7 = v4Var8.f25734m;
                Intrinsics.checkNotNullExpressionValue(textView7, "binding.themeTypeText");
                textView7.setVisibility(8);
                this.themeType.setSelected(false);
                this.themeType = new GameSubTypeData();
                v4 v4Var9 = this.binding;
                if (v4Var9 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                TextView textView8 = v4Var9.f25734m;
                Intrinsics.checkNotNullExpressionValue(textView8, "binding.themeTypeText");
                textView8.setVisibility(8);
                this.playType.setSelected(false);
                this.playType = new GameSubTypeData();
                v4 v4Var10 = this.binding;
                if (v4Var10 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                TextView textView9 = v4Var10.f25731j;
                Intrinsics.checkNotNullExpressionValue(textView9, "binding.playTypeText");
                textView9.setVisibility(8);
                this.featureType.setSelected(false);
                this.featureType = new GameSubTypeData();
                v4 v4Var11 = this.binding;
                if (v4Var11 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                TextView textView10 = v4Var11.f25724c;
                Intrinsics.checkNotNullExpressionValue(textView10, "binding.featureTypeText");
                textView10.setVisibility(8);
                break;
            case R.id.themeTypeText /* 2131300330 */:
                this.themeType.setSelected(false);
                this.themeType = new GameSubTypeData();
                v4 v4Var12 = this.binding;
                if (v4Var12 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                TextView textView11 = v4Var12.f25734m;
                Intrinsics.checkNotNullExpressionValue(textView11, "binding.themeTypeText");
                textView11.setVisibility(8);
                break;
        }
        FindTypeListAdapter findTypeListAdapter = this.findTypeAdapter;
        if (findTypeListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("findTypeAdapter");
        }
        findTypeListAdapter.notifyDataSetChanged();
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        List<GameSubTypeData> reversed;
        List mutableList;
        super.onCreate(bundle);
        v4 c4 = v4.c(LayoutInflater.from(this));
        Intrinsics.checkNotNullExpressionValue(c4, "CategroyGamelistActivity…ayoutInflater.from(this))");
        this.binding = c4;
        this.context = this;
        if (c4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        setContentView(c4.getRoot());
        v4 v4Var = this.binding;
        if (v4Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        View view = v4Var.f25735n.f24815c;
        Intrinsics.checkNotNullExpressionValue(view, "binding.titleLayout.line");
        view.setVisibility(8);
        Context context = this.context;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("context");
        }
        String d4 = new PrefDef_(context).gameTypeList().d();
        if (d4 == null || d4.length() == 0) {
            d4 = "[{\"id\":1,\"title\":\"模拟器\",\"type\":1,\"sub_game_type\":[{\"id\":31,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/fba_icon.png\",\"title\":\"街机\"},{\"id\":33,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/gba_icon.png\",\"title\":\"GBA\"},{\"id\":34,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/psp_icon.png\",\"title\":\"PSP\"},{\"id\":35,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/fc_icon.png\",\"title\":\"FC\"},{\"id\":43,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/sfc_icon.png\",\"title\":\"SFC\"},{\"id\":53,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/ps_icon.png\",\"title\":\"PS\"},{\"id\":51,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/md_icon.png\",\"title\":\"MD\"},{\"id\":54,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/wsc_icon.png\",\"title\":\"WSC\"},{\"id\":57,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/n64_icon.png\",\"title\":\"N64\"},{\"id\":58,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/on_icon.png\",\"title\":\"ONS\"},{\"id\":32,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/nd_icon.png\",\"title\":\"NDS\"},{\"id\":56,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/gbc_icon.png\",\"title\":\"GBC\"},{\"id\":60,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/dc_icon.png\",\"title\":\"DC\"},{\"id\":102,\"pic\":\"\",\"title\":\"H5\"}]},{\"id\":2,\"title\":\"安卓\",\"type\":2,\"sub_game_type\":[{\"id\":10001,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/onlin_icon.png\",\"title\":\"网游\"},{\"id\":10002,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/single_icon.png\",\"title\":\"单机\"},{\"id\":10003,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/single_icon.png\",\"title\":\"mod\"}]},{\"id\":3,\"title\":\"分类\",\"type\":3,\"sub_game_type\":[{\"id\":24,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/f3/ae/f3ae58e30ae7e432d7571a5ab08e31a2.png\",\"title\":\"动作冒险\"},{\"id\":23,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/2d/31/2d31f269379aee69d2e283478a1b9aa5.png\",\"title\":\"休闲益智\"},{\"id\":20,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/e3/62/e36255c965b63e80d901f7ea04ae5aa1.png\",\"title\":\"角色扮演\"},{\"id\":25,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/f4/44/f4444b37064a2cb88401db74dc5e3f75.png\",\"title\":\"射击飞行\"},{\"id\":19,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/e1/d1/e1d1edd8076f1d92425cef93feef1cf2.png\",\"title\":\"策略战棋\"},{\"id\":17,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/3f/c8/3fc873bf10d151215d5b977178c4afe6.png\",\"title\":\"模拟游戏\"},{\"id\":22,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/3c/05/3c054708b2a888461eb338d34412a3f0.png\",\"title\":\"体育游戏\"},{\"id\":39,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/8e/de/8ede16897f71fdba1389d625b1c9ccfa.png\",\"title\":\"竞速游戏\"},{\"id\":18,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/fc/9c/fc9c346e32b8f48fe6348b8b72e970ce.png\",\"title\":\"格斗竞技\"},{\"id\":38,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/ef/8d/ef8d5060aa6c85a58bff921302bcc73a.png\",\"title\":\"经营游戏\"},{\"id\":13,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/c9/49/c949ce67d0ccf31a5dbe6cde1d6c213e.png\",\"title\":\"AVG恋爱\"},{\"id\":15,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/db/0f/db0f26037fee0b193fa9d77094238d9a.png\",\"title\":\"生存游戏\"},{\"id\":16,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/88/ff/88ff59f4c24e0d14aed861500a9b85e9.png\",\"title\":\"恐怖游戏\"},{\"id\":12,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/eb/be/ebbe18e8be70b2ff811e32f5bdd8eee3.png\",\"title\":\"塔防游戏\"},{\"id\":41,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/fb/5f/fb5f0f3569e9d40babd7d8c10da7195e.png\",\"title\":\"音乐节奏\"},{\"id\":21,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/a4/4c/a44c5c9440c9433dd8c90065790a72ab.png\",\"title\":\"放置挂机\"}]},{\"id\":4,\"title\":\"题材\",\"type\":4,\"sub_game_type\":[{\"id\":248,\"pic\":\"\",\"title\":\"二次元\"},{\"id\":249,\"pic\":\"\",\"title\":\"拟人\"},{\"id\":250,\"pic\":\"\",\"title\":\"枪战\"},{\"id\":251,\"pic\":\"\",\"title\":\"山海经\"},{\"id\":252,\"pic\":\"\",\"title\":\"动漫IP\"},{\"id\":253,\"pic\":\"\",\"title\":\"冒险\"},{\"id\":254,\"pic\":\"\",\"title\":\"地牢迷宫\"},{\"id\":255,\"pic\":\"\",\"title\":\"魔幻\"},{\"id\":256,\"pic\":\"\",\"title\":\"科幻\"},{\"id\":257,\"pic\":\"\",\"title\":\"末日\"},{\"id\":258,\"pic\":\"\",\"title\":\"火影忍者\"},{\"id\":259,\"pic\":\"\",\"title\":\"日漫\"},{\"id\":260,\"pic\":\"\",\"title\":\"海战\"},{\"id\":261,\"pic\":\"\",\"title\":\"武侠\"},{\"id\":262,\"pic\":\"\",\"title\":\"童话\"},{\"id\":263,\"pic\":\"\",\"title\":\"史莱姆\"},{\"id\":264,\"pic\":\"\",\"title\":\"美食\"},{\"id\":265,\"pic\":\"\",\"title\":\"忍者\"},{\"id\":266,\"pic\":\"\",\"title\":\"火柴人\"},{\"id\":267,\"pic\":\"\",\"title\":\"枪娘\"},{\"id\":268,\"pic\":\"\",\"title\":\"魔物娘\"},{\"id\":269,\"pic\":\"\",\"title\":\"机甲\"},{\"id\":270,\"pic\":\"\",\"title\":\"恋爱\"},{\"id\":271,\"pic\":\"\",\"title\":\"三国\"},{\"id\":272,\"pic\":\"\",\"title\":\"战争\"},{\"id\":273,\"pic\":\"\",\"title\":\"狩猎\"},{\"id\":274,\"pic\":\"\",\"title\":\"修仙\"},{\"id\":275,\"pic\":\"\",\"title\":\"初音未来\"},{\"id\":276,\"pic\":\"\",\"title\":\"人生\"},{\"id\":277,\"pic\":\"\",\"title\":\"坦克\"},{\"id\":278,\"pic\":\"\",\"title\":\"二战\"},{\"id\":279,\"pic\":\"\",\"title\":\"战舰\"},{\"id\":280,\"pic\":\"\",\"title\":\"神话\"},{\"id\":281,\"pic\":\"\",\"title\":\"僵尸\"},{\"id\":282,\"pic\":\"\",\"title\":\"植物\"},{\"id\":283,\"pic\":\"\",\"title\":\"恐怖\"},{\"id\":284,\"pic\":\"\",\"title\":\"动物\"},{\"id\":285,\"pic\":\"\",\"title\":\"盗墓\"},{\"id\":286,\"pic\":\"\",\"title\":\"舰娘\"},{\"id\":287,\"pic\":\"\",\"title\":\"狼人杀\"},{\"id\":288,\"pic\":\"\",\"title\":\"2048\"},{\"id\":289,\"pic\":\"\",\"title\":\"仙侠\"},{\"id\":290,\"pic\":\"\",\"title\":\"西游\"},{\"id\":291,\"pic\":\"\",\"title\":\"农场\"},{\"id\":292,\"pic\":\"\",\"title\":\"电竞\"},{\"id\":293,\"pic\":\"\",\"title\":\"赛车\"},{\"id\":294,\"pic\":\"\",\"title\":\"开罗\"},{\"id\":295,\"pic\":\"\",\"title\":\"足球\"},{\"id\":296,\"pic\":\"\",\"title\":\"篮球\"},{\"id\":297,\"pic\":\"\",\"title\":\"妖怪\"},{\"id\":298,\"pic\":\"\",\"title\":\"太空\"},{\"id\":299,\"pic\":\"\",\"title\":\"SLG\"},{\"id\":300,\"pic\":\"\",\"title\":\"航海\"},{\"id\":301,\"pic\":\"\",\"title\":\"烹饪\"},{\"id\":302,\"pic\":\"\",\"title\":\"漫威\"},{\"id\":303,\"pic\":\"\",\"title\":\"超级英雄\"},{\"id\":304,\"pic\":\"\",\"title\":\"美漫\"},{\"id\":305,\"pic\":\"\",\"title\":\"暗黑\"},{\"id\":306,\"pic\":\"\",\"title\":\"国创\"},{\"id\":307,\"pic\":\"\",\"title\":\"偶像\"},{\"id\":308,\"pic\":\"\",\"title\":\"手机\"},{\"id\":309,\"pic\":\"\",\"title\":\"克苏鲁\"},{\"id\":310,\"pic\":\"\",\"title\":\"侦探\"},{\"id\":311,\"pic\":\"\",\"title\":\"高达\"},{\"id\":312,\"pic\":\"\",\"title\":\"乐高\"},{\"id\":313,\"pic\":\"\",\"title\":\"数独\"},{\"id\":314,\"pic\":\"\",\"title\":\"钢琴\"},{\"id\":315,\"pic\":\"\",\"title\":\"数学\"},{\"id\":316,\"pic\":\"\",\"title\":\"脱出\"},{\"id\":317,\"pic\":\"\",\"title\":\"大富翁\"},{\"id\":318,\"pic\":\"\",\"title\":\"口袋妖怪\"},{\"id\":319,\"pic\":\"\",\"title\":\"拳皇\"},{\"id\":320,\"pic\":\"\",\"title\":\"奥特曼\"},{\"id\":321,\"pic\":\"\",\"title\":\"死神\"},{\"id\":322,\"pic\":\"\",\"title\":\"侠盗猎车手\"},{\"id\":323,\"pic\":\"\",\"title\":\"死神vs火影\"},{\"id\":324,\"pic\":\"\",\"title\":\"三国战纪\"},{\"id\":325,\"pic\":\"\",\"title\":\"蜘蛛侠\"},{\"id\":326,\"pic\":\"\",\"title\":\"游戏王\"},{\"id\":327,\"pic\":\"\",\"title\":\"刺客信条\"},{\"id\":328,\"pic\":\"\",\"title\":\"坦克大战\"},{\"id\":329,\"pic\":\"\",\"title\":\"“热血”系列游戏\"},{\"id\":330,\"pic\":\"\",\"title\":\"捕鱼\"},{\"id\":331,\"pic\":\"\",\"title\":\"梦幻模拟战\"},{\"id\":332,\"pic\":\"\",\"title\":\"三国无双\"},{\"id\":333,\"pic\":\"\",\"title\":\"植物大战僵尸\"},{\"id\":334,\"pic\":\"\",\"title\":\"龙珠\"},{\"id\":335,\"pic\":\"\",\"title\":\"饥荒\"},{\"id\":336,\"pic\":\"\",\"title\":\"模拟山羊\"},{\"id\":337,\"pic\":\"\",\"title\":\"英雄联盟\"},{\"id\":338,\"pic\":\"\",\"title\":\"仙剑奇侠传\"},{\"id\":339,\"pic\":\"\",\"title\":\"传奇\"},{\"id\":340,\"pic\":\"\",\"title\":\"水浒传\"},{\"id\":341,\"pic\":\"\",\"title\":\"奇迹MU\"},{\"id\":342,\"pic\":\"\",\"title\":\"实况足球\"},{\"id\":343,\"pic\":\"\",\"title\":\"最终幻想\"},{\"id\":344,\"pic\":\"\",\"title\":\"数码宝贝\"},{\"id\":345,\"pic\":\"\",\"title\":\"恐龙\"},{\"id\":346,\"pic\":\"\",\"title\":\"战国\"},{\"id\":347,\"pic\":\"\",\"title\":\"校园\"}]},{\"id\":5,\"title\":\"玩法\",\"type\":5,\"sub_game_type\":[{\"id\":385,\"pic\":\"\",\"title\":\"MOBA\"},{\"id\":386,\"pic\":\"\",\"title\":\"自走棋\"},{\"id\":387,\"pic\":\"\",\"title\":\"塔防\"},{\"id\":388,\"pic\":\"\",\"title\":\"养成\"},{\"id\":389,\"pic\":\"\",\"title\":\"策略\"},{\"id\":390,\"pic\":\"\",\"title\":\"射击\"},{\"id\":391,\"pic\":\"\",\"title\":\"卡牌\"},{\"id\":392,\"pic\":\"\",\"title\":\"回合制RPG\"},{\"id\":393,\"pic\":\"\",\"title\":\"动作\"},{\"id\":394,\"pic\":\"\",\"title\":\"挂机放置\"},{\"id\":395,\"pic\":\"\",\"title\":\"动作RPG\"},{\"id\":396,\"pic\":\"\",\"title\":\"格斗\"},{\"id\":397,\"pic\":\"\",\"title\":\"吃鸡\"},{\"id\":398,\"pic\":\"\",\"title\":\"策略RPG\"},{\"id\":399,\"pic\":\"\",\"title\":\"MMORPG\"},{\"id\":400,\"pic\":\"\",\"title\":\"建造\"},{\"id\":401,\"pic\":\"\",\"title\":\"模拟\"},{\"id\":402,\"pic\":\"\",\"title\":\"消除\"},{\"id\":403,\"pic\":\"\",\"title\":\"战棋\"},{\"id\":404,\"pic\":\"\",\"title\":\"竞速\"},{\"id\":405,\"pic\":\"\",\"title\":\"跑酷\"},{\"id\":406,\"pic\":\"\",\"title\":\"经营\"},{\"id\":407,\"pic\":\"\",\"title\":\"即时战略\"},{\"id\":408,\"pic\":\"\",\"title\":\"文字冒险\"},{\"id\":409,\"pic\":\"\",\"title\":\"音乐节奏\"},{\"id\":410,\"pic\":\"\",\"title\":\"棋牌\"},{\"id\":411,\"pic\":\"\",\"title\":\"桌游\"},{\"id\":412,\"pic\":\"\",\"title\":\"io\"},{\"id\":413,\"pic\":\"\",\"title\":\"换装\"},{\"id\":414,\"pic\":\"\",\"title\":\"闯关\"},{\"id\":415,\"pic\":\"\",\"title\":\"互动小说\"},{\"id\":416,\"pic\":\"\",\"title\":\"解谜\"},{\"id\":417,\"pic\":\"\",\"title\":\"点击\"},{\"id\":418,\"pic\":\"\",\"title\":\"益智\"},{\"id\":419,\"pic\":\"\",\"title\":\"弹射\"},{\"id\":420,\"pic\":\"\",\"title\":\"体育\"},{\"id\":421,\"pic\":\"\",\"title\":\"互动电影\"},{\"id\":422,\"pic\":\"\",\"title\":\"随行游戏\"},{\"id\":423,\"pic\":\"\",\"title\":\"视觉小说\"},{\"id\":424,\"pic\":\"\",\"title\":\"MUD\"},{\"id\":425,\"pic\":\"\",\"title\":\"飞行\"},{\"id\":426,\"pic\":\"\",\"title\":\"驾驶\"},{\"id\":427,\"pic\":\"\",\"title\":\"生存\"}]},{\"id\":6,\"title\":\"特色\",\"type\":6,\"sub_game_type\":[{\"id\":428,\"pic\":\"\",\"title\":\"联机\"},{\"id\":429,\"pic\":\"\",\"title\":\"5v5\"},{\"id\":430,\"pic\":\"\",\"title\":\"多人\"},{\"id\":431,\"pic\":\"\",\"title\":\"推塔\"},{\"id\":432,\"pic\":\"\",\"title\":\"美女\"},{\"id\":433,\"pic\":\"\",\"title\":\"硬核\"},{\"id\":434,\"pic\":\"\",\"title\":\"收集要素\"},{\"id\":435,\"pic\":\"\",\"title\":\"国产\"},{\"id\":436,\"pic\":\"\",\"title\":\"FPS\"},{\"id\":437,\"pic\":\"\",\"title\":\"PVP\"},{\"id\":438,\"pic\":\"\",\"title\":\"竞技\"},{\"id\":439,\"pic\":\"\",\"title\":\"TPS\"},{\"id\":440,\"pic\":\"\",\"title\":\"3D\"},{\"id\":441,\"pic\":\"\",\"title\":\"合作\"},{\"id\":442,\"pic\":\"\",\"title\":\"TPP\"},{\"id\":443,\"pic\":\"\",\"title\":\"剧情\"},{\"id\":444,\"pic\":\"\",\"title\":\"对战\"},{\"id\":445,\"pic\":\"\",\"title\":\"Roguelike\"},{\"id\":446,\"pic\":\"\",\"title\":\"Steam移植\"},{\"id\":447,\"pic\":\"\",\"title\":\"独立游戏\"},{\"id\":450,\"pic\":\"\",\"title\":\"休闲\"},{\"id\":451,\"pic\":\"\",\"title\":\"高画质\"},{\"id\":452,\"pic\":\"\",\"title\":\"高难度\"},{\"id\":453,\"pic\":\"\",\"title\":\"横版\"},{\"id\":454,\"pic\":\"\",\"title\":\"和风\"},{\"id\":455,\"pic\":\"\",\"title\":\"Live2D\"},{\"id\":456,\"pic\":\"\",\"title\":\"卡通\"},{\"id\":457,\"pic\":\"\",\"title\":\"组队\"},{\"id\":458,\"pic\":\"\",\"title\":\"CCG\"},{\"id\":459,\"pic\":\"\",\"title\":\"1v1\"},{\"id\":460,\"pic\":\"\",\"title\":\"可爱\"},{\"id\":461,\"pic\":\"\",\"title\":\"局域网联机\"},{\"id\":462,\"pic\":\"\",\"title\":\"像素\"},{\"id\":463,\"pic\":\"\",\"title\":\"弹幕\"},{\"id\":464,\"pic\":\"\",\"title\":\"中国风\"},{\"id\":465,\"pic\":\"\",\"title\":\"高自由度\"},{\"id\":466,\"pic\":\"\",\"title\":\"古风\"},{\"id\":467,\"pic\":\"\",\"title\":\"可捏脸\"},{\"id\":468,\"pic\":\"\",\"title\":\"开放世界\"},{\"id\":469,\"pic\":\"\",\"title\":\"社交\"},{\"id\":470,\"pic\":\"\",\"title\":\"DIY\"},{\"id\":471,\"pic\":\"\",\"title\":\"经典\"},{\"id\":472,\"pic\":\"\",\"title\":\"多结局\"},{\"id\":473,\"pic\":\"\",\"title\":\"手绘风格\"},{\"id\":474,\"pic\":\"\",\"title\":\"装修\"},{\"id\":475,\"pic\":\"\",\"title\":\"设计\"},{\"id\":476,\"pic\":\"\",\"title\":\"女性向\"},{\"id\":477,\"pic\":\"\",\"title\":\"声控\"},{\"id\":478,\"pic\":\"\",\"title\":\"漂移\"},{\"id\":479,\"pic\":\"\",\"title\":\"水墨风\"},{\"id\":480,\"pic\":\"\",\"title\":\"2D\"},{\"id\":481,\"pic\":\"\",\"title\":\"打击感\"},{\"id\":482,\"pic\":\"\",\"title\":\"手速\"},{\"id\":483,\"pic\":\"\",\"title\":\"声优配音\"},{\"id\":484,\"pic\":\"\",\"title\":\"致郁\"},{\"id\":485,\"pic\":\"\",\"title\":\"DBG\"},{\"id\":486,\"pic\":\"\",\"title\":\"逃生\"},{\"id\":487,\"pic\":\"\",\"title\":\"移植\"},{\"id\":488,\"pic\":\"\",\"title\":\"搞笑\"},{\"id\":489,\"pic\":\"\",\"title\":\"合成\"},{\"id\":490,\"pic\":\"\",\"title\":\"动人音乐\"},{\"id\":491,\"pic\":\"\",\"title\":\"电音\"},{\"id\":492,\"pic\":\"\",\"title\":\"竖版\"},{\"id\":493,\"pic\":\"\",\"title\":\"童年\"},{\"id\":494,\"pic\":\"\",\"title\":\"Q版\"},{\"id\":495,\"pic\":\"\",\"title\":\"有毒\"},{\"id\":496,\"pic\":\"\",\"title\":\"乙女\"},{\"id\":497,\"pic\":\"\",\"title\":\"TCG\"},{\"id\":498,\"pic\":\"\",\"title\":\"悬疑\"},{\"id\":499,\"pic\":\"\",\"title\":\"治愈\"},{\"id\":500,\"pic\":\"\",\"title\":\"组装\"},{\"id\":501,\"pic\":\"\",\"title\":\"推理\"},{\"id\":502,\"pic\":\"\",\"title\":\"解压\"},{\"id\":503,\"pic\":\"\",\"title\":\"meta\"},{\"id\":504,\"pic\":\"\",\"title\":\"汉化\"},{\"id\":505,\"pic\":\"\",\"title\":\"欧美画风\"},{\"id\":506,\"pic\":\"\",\"title\":\"3v3\"},{\"id\":507,\"pic\":\"\",\"title\":\"魔性\"},{\"id\":508,\"pic\":\"\",\"title\":\"平台跳跃\"},{\"id\":509,\"pic\":\"\",\"title\":\"自制关卡\"},{\"id\":510,\"pic\":\"\",\"title\":\"轻改\"},{\"id\":511,\"pic\":\"\",\"title\":\"简约画风\"},{\"id\":512,\"pic\":\"\",\"title\":\"街机风格\"},{\"id\":513,\"pic\":\"\",\"title\":\"AR\"},{\"id\":514,\"pic\":\"\",\"title\":\"户外\"},{\"id\":515,\"pic\":\"\",\"title\":\"日系风格\"},{\"id\":516,\"pic\":\"\",\"title\":\"VR\"},{\"id\":517,\"pic\":\"\",\"title\":\"佛系\"},{\"id\":518,\"pic\":\"\",\"title\":\"低模\"},{\"id\":519,\"pic\":\"\",\"title\":\"小清新\"},{\"id\":520,\"pic\":\"\",\"title\":\"俯视视角\"},{\"id\":521,\"pic\":\"\",\"title\":\"PC移植\"},{\"id\":522,\"pic\":\"\",\"title\":\"买断制\"},{\"id\":523,\"pic\":\"\",\"title\":\"进化\"},{\"id\":524,\"pic\":\"\",\"title\":\"剪纸风\"},{\"id\":525,\"pic\":\"\",\"title\":\"剪影风\"},{\"id\":526,\"pic\":\"\",\"title\":\"催泪\"},{\"id\":527,\"pic\":\"\",\"title\":\"下落式\"},{\"id\":528,\"pic\":\"\",\"title\":\"手残\"},{\"id\":529,\"pic\":\"\",\"title\":\"反应力\"}]}]";
        }
        Object readValue = new ObjectMapper().readValue(d4, JsonMapper.getInstance().createCollectionType(List.class, GameTypeData.class));
        Intrinsics.checkNotNullExpressionValue(readValue, "ObjectMapper().readValue…ameTypeData::class.java))");
        List<GameTypeData> list = (List) readValue;
        this.gameTypeList = list;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((GameTypeData) obj).getType() == 0) {
                arrayList.add(obj);
            }
        }
        if (!arrayList.isEmpty()) {
            List<GameTypeData> list2 = this.gameTypeList;
            if (list2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
            }
            list2.remove(arrayList.get(0));
        }
        List<GameTypeData> list3 = this.gameTypeList;
        if (list3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : list3) {
            if (((GameTypeData) obj2).getType() == 2) {
                arrayList2.add(obj2);
            }
        }
        if (!arrayList2.isEmpty()) {
            List<GameTypeData> list4 = this.gameTypeList;
            if (list4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
            }
            list4.remove(arrayList2.get(0));
            List<GameSubTypeData> sub_game_type = ((GameTypeData) arrayList2.get(0)).getSub_game_type();
            Intrinsics.checkNotNull(sub_game_type);
            Intrinsics.checkNotNullExpressionValue(sub_game_type, "da[0].sub_game_type!!");
            reversed = CollectionsKt___CollectionsKt.reversed(sub_game_type);
            for (GameSubTypeData gameSubTypeData : reversed) {
                List<GameTypeData> list5 = this.gameTypeList;
                if (list5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
                }
                ArrayList arrayList3 = new ArrayList();
                for (Object obj3 : list5) {
                    if (((GameTypeData) obj3).getType() == 1) {
                        arrayList3.add(obj3);
                    }
                }
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList3);
                List<GameSubTypeData> sub_game_type2 = ((GameTypeData) mutableList.get(0)).getSub_game_type();
                Intrinsics.checkNotNull(sub_game_type2);
                sub_game_type2.add(0, gameSubTypeData);
            }
        }
        this.context = this;
        initView();
    }

    public final void reLoadDatas() {
        v4 v4Var = this.binding;
        if (v4Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        onClick(v4Var.f25732k);
        v4 v4Var2 = this.binding;
        if (v4Var2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        onClick(v4Var2.f25730i);
    }

    public final void setBinding(@NotNull v4 v4Var) {
        Intrinsics.checkNotNullParameter(v4Var, "<set-?>");
        this.binding = v4Var;
    }

    public final void setContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }

    public final void setDatas(@NotNull List<CommonListMainData> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.datas = list;
    }

    public final void setFeatureType(@NotNull GameSubTypeData gameSubTypeData) {
        Intrinsics.checkNotNullParameter(gameSubTypeData, "<set-?>");
        this.featureType = gameSubTypeData;
    }

    public final void setFindTypeAdapter(@NotNull FindTypeListAdapter findTypeListAdapter) {
        Intrinsics.checkNotNullParameter(findTypeListAdapter, "<set-?>");
        this.findTypeAdapter = findTypeListAdapter;
    }

    public final void setFragments(@NotNull ArrayList<Fragment> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.fragments = arrayList;
    }

    public final void setGameSortType(@NotNull TagData tagData) {
        Intrinsics.checkNotNullParameter(tagData, "<set-?>");
        this.gameSortType = tagData;
    }

    public final void setGameType(@NotNull GameSubTypeData gameSubTypeData) {
        Intrinsics.checkNotNullParameter(gameSubTypeData, "<set-?>");
        this.gameType = gameSubTypeData;
    }

    public final void setGameTypeList(@NotNull List<GameTypeData> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.gameTypeList = list;
    }

    public final void setLeftTypeAdapter(@NotNull FindGameClassfyFragment.TabRecycleAdapter tabRecycleAdapter) {
        Intrinsics.checkNotNullParameter(tabRecycleAdapter, "<set-?>");
        this.leftTypeAdapter = tabRecycleAdapter;
    }

    public final void setModelType(@NotNull GameSubTypeData gameSubTypeData) {
        Intrinsics.checkNotNullParameter(gameSubTypeData, "<set-?>");
        this.modelType = gameSubTypeData;
    }

    public final void setPage(int i2) {
        this.page = i2;
    }

    public final void setPlayType(@NotNull GameSubTypeData gameSubTypeData) {
        Intrinsics.checkNotNullParameter(gameSubTypeData, "<set-?>");
        this.playType = gameSubTypeData;
    }

    public final void setRequestArgs(@NotNull CategoryRequest categoryRequest) {
        Intrinsics.checkNotNullParameter(categoryRequest, "<set-?>");
        this.requestArgs = categoryRequest;
    }

    public final void setTabType(@NotNull GameTypeData gameTypeData) {
        Intrinsics.checkNotNullParameter(gameTypeData, "<set-?>");
        this.tabType = gameTypeData;
    }

    public final void setThemeType(@NotNull GameSubTypeData gameSubTypeData) {
        Intrinsics.checkNotNullParameter(gameSubTypeData, "<set-?>");
        this.themeType = gameSubTypeData;
    }
}
