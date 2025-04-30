.class public Lcom/join/mgps/activity/GamePaiWeiActivty;
.super Landroid/app/Activity;
.source "GamePaiWeiActivty.java"

# interfaces
.implements Lcom/join/mgps/adapter/GamePaiWeiAdapter$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GamePaiWeiActivty$RankRecordReceiver;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c007c
.end annotation


# instance fields
.field A:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field A0:J

.field B:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private B0:Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;

.field C:I

.field private C0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;",
            ">;"
        }
    .end annotation
.end field

.field D:I

.field private D0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;",
            ">;"
        }
    .end annotation
.end field

.field E:I

.field private E0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lcom/join/mgps/dialog/x0;

.field private F0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/lang/String;

.field private G0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;",
            ">;"
        }
    .end annotation
.end field

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field a:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/widget/ListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private n0:Ljava/lang/String;

.field o:Landroid/widget/ListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field p:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private p0:Lcom/join/mgps/adapter/v4;

.field q:Lcom/join/mgps/customview/AutoScrollViewPager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/mgps/customview/AutoScrollViewPager<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private q0:I

.field r:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private final r0:Ljava/lang/String;

.field private s:Landroid/content/Context;

.field private final s0:Ljava/lang/String;

.field private t:Lcom/join/mgps/adapter/GamePaiWeiAdapter;

.field private final t0:Ljava/lang/String;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;",
            ">;"
        }
    .end annotation
.end field

.field u0:Lcom/join/mgps/pref/PrefDef_;

.field private v:Ljava/lang/String;

.field v0:Lcom/join/mgps/activity/GamePaiWeiActivty$RankRecordReceiver;

.field w:Lcom/join/mgps/rpc/k;

.field w0:Lcom/join/mgps/dialog/t1;

.field x:Lcom/join/mgps/rpc/k;

.field private x0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;",
            ">;"
        }
    .end annotation
.end field

.field y:Lcom/join/mgps/Util/b;
    .annotation build Lorg/androidannotations/annotations/Bean;
    .end annotation
.end field

.field private y0:I

.field z:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private z0:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "\u5e01"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->v:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->F:Lcom/join/mgps/dialog/x0;

    const-string v1, ""

    .line 4
    iput-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->G:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->H:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->I:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->J:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->K:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->n0:Ljava/lang/String;

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->q0:I

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/rpc/g;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/lobby/game_rank/fileUpload"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->r0:Ljava/lang/String;

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/rpc/g;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/v2/game/ranking/submitUpload"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s0:Ljava/lang/String;

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/rpc/g;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/v2/game/ranking/addPlayTimes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->t0:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->x0:Ljava/util/List;

    .line 15
    iput v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->y0:I

    const/4 v1, 0x1

    .line 16
    iput v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->z0:I

    const-wide/16 v1, 0x0

    .line 17
    iput-wide v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->A0:J

    .line 18
    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->B0:Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->C0:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->D0:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->E0:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->F0:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->G0:Ljava/util/List;

    return-void
.end method

.method private B()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->F:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Lcom/join/mgps/dialog/x0;->b()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->w()V

    return-void
.end method

.method private F(Z)V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->B0:Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;

    if-nez v1, :cond_1

    .line 2
    iget v1, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->B:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    .line 3
    new-instance v1, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;

    iget-object v2, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->y:Lcom/join/mgps/Util/b;

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->G:Ljava/lang/String;

    iget-object v6, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->z:Ljava/lang/String;

    iget v7, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->A:I

    iget-object v8, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->H:Ljava/lang/String;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget v12, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->C:I

    iget v13, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->D:I

    iget v14, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->B:I

    iget v15, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->E:I

    move-object v3, v1

    move/from16 v9, p1

    invoke-direct/range {v3 .. v15}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZJIIII)V

    iput-object v1, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->B0:Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;

    iget-object v2, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->y:Lcom/join/mgps/Util/b;

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v17

    iget-object v2, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->G:Ljava/lang/String;

    iget-object v3, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->z:Ljava/lang/String;

    iget v4, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->A:I

    iget-object v5, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->H:Ljava/lang/String;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move-object/from16 v16, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v22, p1

    invoke-direct/range {v16 .. v24}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZJ)V

    iput-object v1, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->B0:Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Ln1/v;->n()Ln1/v;

    move-result-object v1

    iget-object v2, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->B0:Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;

    invoke-virtual {v2}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg1/b;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;

    iput-object v1, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->B0:Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;

    .line 8
    :goto_0
    invoke-static {}, Ln1/v;->n()Ln1/v;

    move-result-object v1

    iget-object v2, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->B0:Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;

    invoke-virtual {v1, v2}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private H(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.rank_record_upload_result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "_params_rank_upload_result"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private P()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->A0:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->A0:J

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".rec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/join/mgps/Util/g0;->x(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_v2.rec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/join/mgps/Util/g0;->x(Ljava/lang/String;)Z

    move-result v1

    :cond_1
    if-nez v1, :cond_2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_v3.rec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/join/mgps/Util/g0;->x(Ljava/lang/String;)Z

    move-result v1

    :cond_2
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->H:Ljava/lang/String;

    .line 10
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 13
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/GamePaiWeiActivty;->F(Z)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u65e0\u6cd5\u4e0a\u4f20\u6392\u4f4d\u6570\u636e\uff01"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 15
    invoke-direct {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->U()V

    return-void

    .line 16
    :cond_3
    iget-object v2, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->F:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v2}, Lcom/join/mgps/dialog/x0;->b()V

    .line 17
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->Q(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->I:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->I:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->G:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->H:Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    const-string v1, "\u6311\u6218\u5931\u8d25\uff01"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_5
    :goto_0
    return-void
.end method

.method private U()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->w0:Lcom/join/mgps/dialog/t1;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/dialog/t1;

    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    const v2, 0x7f12014a

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/dialog/t1;-><init>(Landroid/content/Context;I)V

    const-string v1, "\u7f51\u7edc\u4e0d\u4f73\uff0c\u4e0a\u4f20\u5931\u8d25\u3002\u8054\u7f51\u540e\u518d\u6b21\u8fdb\u5165\u6b64\u9875\u9762\uff0c\u53ef\u91cd\u65b0\u4e0a\u4f20\u6b64\u6392\u4f4d\u8d5b\u8bb0\u5f55"

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/t1;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/t1;

    move-result-object v0

    const-string v1, "\u6211\u77e5\u9053\u4e86"

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/t1;->j(Ljava/lang/String;)Lcom/join/mgps/dialog/t1;

    move-result-object v0

    const-string v1, "\u63d0\u793a"

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/t1;->k(Ljava/lang/String;)Lcom/join/mgps/dialog/t1;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/GamePaiWeiActivty$f;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GamePaiWeiActivty$f;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/t1;->i(Lcom/join/mgps/dialog/t1$b;)Lcom/join/mgps/dialog/t1;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->w0:Lcom/join/mgps/dialog/t1;

    .line 7
    new-instance v1, Lcom/join/mgps/activity/d0;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/d0;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->w0:Lcom/join/mgps/dialog/t1;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/activity/GamePaiWeiActivty;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->z(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic c(Lcom/join/mgps/activity/GamePaiWeiActivty;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->y0:I

    return p1
.end method

.method static synthetic d(Lcom/join/mgps/activity/GamePaiWeiActivty;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->P()V

    return-void
.end method

.method static synthetic e(Lcom/join/mgps/activity/GamePaiWeiActivty;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->z0:I

    return p1
.end method

.method static synthetic f(Lcom/join/mgps/activity/GamePaiWeiActivty;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->H(I)V

    return-void
.end method

.method static synthetic g(Lcom/join/mgps/activity/GamePaiWeiActivty;)Lcom/join/mgps/dialog/x0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->F:Lcom/join/mgps/dialog/x0;

    return-object p0
.end method

.method static synthetic h(Lcom/join/mgps/activity/GamePaiWeiActivty;)Lcom/join/mgps/adapter/v4;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->p0:Lcom/join/mgps/adapter/v4;

    return-object p0
.end method

.method static synthetic i(Lcom/join/mgps/activity/GamePaiWeiActivty;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->E0:Ljava/util/List;

    return-object p0
.end method

.method static synthetic j(Lcom/join/mgps/activity/GamePaiWeiActivty;Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->q(Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;)V

    return-void
.end method

.method static synthetic k(Lcom/join/mgps/activity/GamePaiWeiActivty;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->G0:Ljava/util/List;

    return-object p0
.end method

.method static synthetic l(Lcom/join/mgps/activity/GamePaiWeiActivty;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic m(Lcom/join/mgps/activity/GamePaiWeiActivty;Ljava/util/List;I)Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/GamePaiWeiActivty;->x(Ljava/util/List;I)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Lcom/join/mgps/activity/GamePaiWeiActivty;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->B()V

    return-void
.end method

.method private q(Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;->getRole_id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->C0:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->C0:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;

    .line 5
    new-instance v0, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;

    sget-object v2, Lcom/join/mgps/adapter/GamePaiWeiAdapter$ViewType;->RANK:Lcom/join/mgps/adapter/GamePaiWeiAdapter$ViewType;

    new-instance v3, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d$a;

    invoke-direct {v3, p1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d$a;-><init>(Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;)V

    invoke-direct {v0, v2, v3}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;-><init>(Lcom/join/mgps/adapter/GamePaiWeiAdapter$ViewType;Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->u:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->D0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 8
    :goto_1
    iget-object v2, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->C0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->C0:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;

    invoke-virtual {v2}, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->getRole_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;->getRole_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->D0:Ljava/util/List;

    iget-object v3, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->C0:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->D0:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->D0:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;

    .line 13
    new-instance v0, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;

    sget-object v2, Lcom/join/mgps/adapter/GamePaiWeiAdapter$ViewType;->RANK:Lcom/join/mgps/adapter/GamePaiWeiAdapter$ViewType;

    new-instance v3, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d$a;

    invoke-direct {v3, p1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d$a;-><init>(Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;)V

    invoke-direct {v0, v2, v3}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;-><init>(Lcom/join/mgps/adapter/GamePaiWeiAdapter$ViewType;Ljava/lang/Object;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->u:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->t:Lcom/join/mgps/adapter/GamePaiWeiAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private r(Z)V
    .locals 3

    .line 1
    invoke-static {}, Ln1/v;->n()Ln1/v;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->y:Lcom/join/mgps/Util/b;

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/v;->p(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->x0:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4f60\u6709"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->x0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u4e2a\u6392\u4f4d\u6210\u7ee9\u672a\u4e0a\u4f20!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4e0a\u4f20\u5931\u8d25\uff0c\u4f60\u8fd8\u6709"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->x0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u4e2a\u5386\u53f2\u6392\u4f4d\u6210\u7ee9\u672a\u4e0a\u4f20!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    :goto_0
    new-instance v0, Lcom/join/mgps/dialog/b;

    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    const v2, 0x7f12014a

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/dialog/b;-><init>(Landroid/content/Context;I)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/b;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object p1

    const-string v0, "\u7acb\u5373\u4e0a\u4f20"

    .line 7
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/b;->j(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object p1

    const-string v0, "\u4e0b\u6b21\u518d\u8bf4"

    .line 8
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/b;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object p1

    const-string v0, "\u63d0\u793a"

    .line 9
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/b;->k(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/activity/GamePaiWeiActivty$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamePaiWeiActivty$e;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty;)V

    .line 10
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/b;->i(Lcom/join/mgps/dialog/b$c;)Lcom/join/mgps/dialog/b;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method private x(Ljava/util/List;I)Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;",
            ">;I)",
            "Lcom/facebook/drawee/view/SimpleDraweeView;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3
    new-instance v1, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v1}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Lcom/facebook/drawee/generic/RoundingParams;->s(F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 5
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;

    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;->getPic_remote()Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f080719

    invoke-static {v0, p2, p1, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    return-object v0
.end method

.method private synthetic z(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->w0:Lcom/join/mgps/dialog/t1;

    return-void
.end method


# virtual methods
.method public A([BIZ)J
    .locals 8

    const/4 v0, 0x0

    if-ltz p2, :cond_2

    add-int/lit8 v1, p2, 0x8

    .line 1
    array-length v2, p1

    if-gt v1, v2, :cond_2

    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    if-eqz p3, :cond_0

    move v3, v0

    goto :goto_1

    :cond_0
    rsub-int/lit8 v3, v0, 0x7

    :goto_1
    shl-int/lit8 v3, v3, 0x3

    const-wide/16 v4, 0xff

    shl-long/2addr v4, v3

    add-int v6, p2, v0

    .line 2
    aget-byte v6, p1, v6

    int-to-long v6, v6

    shl-long/2addr v6, v3

    and-long/2addr v4, v6

    or-long/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide v1

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    const-string p2, "less than 8 bytes from index %d  is insufficient for long"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method C()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method D()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/p1;

    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    const v2, 0x7f12014a

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/dialog/p1;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method E()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    const-string v1, "onStartQualifying"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->isLogined(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->isTourist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->B:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->u0:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->rankNotify()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/join/mgps/dialog/w1;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/w1;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance v1, Lcom/join/mgps/activity/GamePaiWeiActivty$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GamePaiWeiActivty$b;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w1;->u(Lcom/join/mgps/dialog/w1$b;)V

    const-string v1, "\u7cfb\u7edf\u63d0\u793a"

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w1;->w(Ljava/lang/CharSequence;)Lcom/join/mgps/dialog/w1;

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dialog/w1;->show()V

    goto :goto_1

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->B()V

    goto :goto_1

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->B()V

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->I:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->G:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->H:Ljava/lang/String;

    .line 14
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginBattle(Landroid/content/Context;)Z

    :goto_1
    return-void
.end method

.method G()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->n:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->n:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->c:Landroid/widget/ImageView;

    const v1, 0x7f080a4f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->n:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->c:Landroid/widget/ImageView;

    const v1, 0x7f080a50

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method I(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->G0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->G0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->G0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->q:Lcom/join/mgps/customview/AutoScrollViewPager;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->G0:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;

    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;->getPic_remote()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v0}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    .line 9
    invoke-virtual {v0, v3}, Lcom/facebook/drawee/generic/RoundingParams;->s(F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v2, 0x7f080719

    invoke-static {v1, v2, p1, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v0, Lcom/join/mgps/activity/GamePaiWeiActivty$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamePaiWeiActivty$l;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->q:Lcom/join/mgps/customview/AutoScrollViewPager;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->q:Lcom/join/mgps/customview/AutoScrollViewPager;

    const/16 v1, 0xfa0

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/AutoScrollViewPager;->setLoopTime(I)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->q:Lcom/join/mgps/customview/AutoScrollViewPager;

    new-instance v1, Lcom/join/mgps/activity/GamePaiWeiActivty$m;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GamePaiWeiActivty$m;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/AutoScrollViewPager;->setOnItemClickListener(Lcom/join/mgps/customview/AutoScrollViewPager$f;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->q:Lcom/join/mgps/customview/AutoScrollViewPager;

    new-instance v1, Lcom/join/mgps/activity/GamePaiWeiActivty$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GamePaiWeiActivty$a;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/AutoScrollViewPager;->setOnCreateItemViewListener(Lcom/join/mgps/customview/AutoScrollViewPager$e;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->q:Lcom/join/mgps/customview/AutoScrollViewPager;

    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v4, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->G0:Ljava/util/List;

    invoke-virtual {v0, v1, v3, v4}, Lcom/join/mgps/customview/AutoScrollViewPager;->l(IILjava/util/List;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->q:Lcom/join/mgps/customview/AutoScrollViewPager;

    invoke-virtual {v0}, Lcom/join/mgps/customview/AutoScrollViewPager;->m()V

    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, v2, :cond_2

    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->q:Lcom/join/mgps/customview/AutoScrollViewPager;

    invoke-virtual {p1}, Lcom/join/mgps/customview/AutoScrollViewPager;->n()V

    :cond_2
    :goto_0
    return-void
.end method

.method J(Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const-string v0, "\u6682\u65e0\u6570\u636e"

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;->getRole()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->j:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;->getUse_time()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->g:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;->getRank()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;->getRole()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;->getRole()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->v:Ljava/lang/String;

    const-string v1, "\u547d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->l:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;->getCost_coin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u547d"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->l:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;->getCost_coin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u5e01"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->j:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->l:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method K()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->C0:Ljava/util/List;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->o:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->C0:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->C0:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;

    .line 7
    new-instance v1, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;

    sget-object v3, Lcom/join/mgps/adapter/GamePaiWeiAdapter$ViewType;->RANK:Lcom/join/mgps/adapter/GamePaiWeiAdapter$ViewType;

    new-instance v4, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d$a;

    invoke-direct {v4, v0}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d$a;-><init>(Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;)V

    invoke-direct {v1, v3, v4}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;-><init>(Lcom/join/mgps/adapter/GamePaiWeiAdapter$ViewType;Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->t:Lcom/join/mgps/adapter/GamePaiWeiAdapter;

    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->d(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->t:Lcom/join/mgps/adapter/GamePaiWeiAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 11
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->o:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method L()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->E0:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    new-instance v0, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;

    invoke-direct {v0}, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;-><init>()V

    const-string v2, "\u5168\u90e8\u89d2\u8272"

    .line 5
    invoke-virtual {v0, v2}, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;->setRole(Ljava/lang/String;)V

    const-string v2, "-1"

    .line 6
    invoke-virtual {v0, v2}, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;->setRole_id(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->E0:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->p0:Lcom/join/mgps/adapter/v4;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/join/mgps/adapter/v4;

    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->E0:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/v4;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->p0:Lcom/join/mgps/adapter/v4;

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->t:Lcom/join/mgps/adapter/GamePaiWeiAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->n:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->p0:Lcom/join/mgps/adapter/v4;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->n:Landroid/widget/ListView;

    new-instance v1, Lcom/join/mgps/activity/GamePaiWeiActivty$k;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GamePaiWeiActivty$k;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->m:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method M(Ljava/lang/String;)V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->y:Lcom/join/mgps/Util/b;

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v4, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->I:Ljava/lang/String;

    iget v5, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->A:I

    iget v6, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->q0:I

    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->F0:Ljava/util/List;

    invoke-static {p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->B:I

    const/16 v3, 0xe

    invoke-static/range {v0 .. v8}, Lcom/join/mgps/Util/UtilsMy;->l3(Landroid/content/Context;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;IILjava/lang/String;I)V

    return-void
.end method

.method N(Ljava/lang/String;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->y:Lcom/join/mgps/Util/b;

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v3, 0xf

    invoke-static {v0, v1, v2, v3, p1}, Lcom/join/mgps/Util/UtilsMy;->p3(Landroid/content/Context;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;)V

    return-void
.end method

.method O(Ljava/lang/String;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->F(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->s()V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 4
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->r(Z)V

    const-string p1, ""

    .line 5
    iput-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->I:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->G:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->H:Ljava/lang/String;

    return-void
.end method

.method Q(Ljava/io/File;Ljava/lang/String;)V
    .locals 22
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iget v2, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->B:I

    const/4 v3, 0x0

    const/16 v5, 0xe

    if-ne v2, v5, :cond_0

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->C:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "costCoin"

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "fileName"

    .line 4
    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v8, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->z:Ljava/lang/String;

    const-string v9, "gameId"

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->E:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "millisecond"

    invoke-interface {v2, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v8, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->G:Ljava/lang/String;

    const-string v11, "playId"

    invoke-interface {v2, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->D:I

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v12, "roleId"

    invoke-interface {v2, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v8, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->y:Lcom/join/mgps/Util/b;

    invoke-virtual {v8}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v8

    const-string v13, "uid"

    invoke-interface {v2, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v8, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->y:Lcom/join/mgps/Util/b;

    invoke-virtual {v8}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v8

    const-string v14, "token"

    invoke-interface {v2, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/join/android/app/common/http/d;->I()Lcom/join/android/app/common/http/d$q;

    move-result-object v15

    iget-object v8, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s0:Ljava/lang/String;

    const/16 v4, 0x9

    new-array v4, v4, [Lcom/join/android/app/common/http/d$n;

    move-object/from16 v17, v8

    new-instance v8, Lcom/join/android/app/common/http/d$n;

    invoke-direct {v8, v5, v1}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v4, v3

    new-instance v1, Lcom/join/android/app/common/http/d$n;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->C:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v7, v3}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v1, v4, v3

    const/4 v1, 0x2

    new-instance v3, Lcom/join/android/app/common/http/d$n;

    iget-object v5, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->z:Ljava/lang/String;

    invoke-direct {v3, v9, v5}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v4, v1

    const/4 v1, 0x3

    new-instance v3, Lcom/join/android/app/common/http/d$n;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->E:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v10, v5}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v4, v1

    const/4 v1, 0x4

    new-instance v3, Lcom/join/android/app/common/http/d$n;

    iget-object v5, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->G:Ljava/lang/String;

    invoke-direct {v3, v11, v5}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v4, v1

    const/4 v1, 0x5

    new-instance v3, Lcom/join/android/app/common/http/d$n;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->D:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v12, v5}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v4, v1

    const/4 v1, 0x6

    new-instance v3, Lcom/join/android/app/common/http/d$n;

    iget-object v5, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->y:Lcom/join/mgps/Util/b;

    .line 12
    invoke-virtual {v5}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v13, v5}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v4, v1

    const/4 v1, 0x7

    new-instance v3, Lcom/join/android/app/common/http/d$n;

    iget-object v5, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->y:Lcom/join/mgps/Util/b;

    .line 13
    invoke-virtual {v5}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v14, v5}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v4, v1

    const/16 v1, 0x8

    new-instance v3, Lcom/join/android/app/common/http/d$n;

    .line 14
    invoke-static {v2}, Lcom/papa91/arc/util/SignUtils;->buildRequestSign(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "sign"

    invoke-direct {v3, v5, v2}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v4, v1

    new-instance v1, Lcom/join/mgps/activity/GamePaiWeiActivty$i;

    invoke-direct {v1, v0}, Lcom/join/mgps/activity/GamePaiWeiActivty$i;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty;)V

    .line 15
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    const-string v2, "file"

    move-object/from16 v16, v17

    move-object/from16 v17, v2

    move-object/from16 v18, p1

    move-object/from16 v19, v4

    move-object/from16 v20, v1

    .line 16
    invoke-virtual/range {v15 .. v21}, Lcom/join/android/app/common/http/d$q;->f(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Lcom/join/android/app/common/http/d$n;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/http/d;->I()Lcom/join/android/app/common/http/d$q;

    move-result-object v5

    iget-object v6, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->r0:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v9, v2, [Lcom/join/android/app/common/http/d$n;

    new-instance v2, Lcom/join/android/app/common/http/d$n;

    const-string v4, "file_name"

    invoke-direct {v2, v4, v1}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v9, v3

    new-instance v10, Lcom/join/mgps/activity/GamePaiWeiActivty$j;

    invoke-direct {v10, v0}, Lcom/join/mgps/activity/GamePaiWeiActivty$j;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty;)V

    .line 18
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v7, "file"

    move-object/from16 v8, p1

    .line 19
    invoke-virtual/range {v5 .. v11}, Lcom/join/android/app/common/http/d$q;->f(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Lcom/join/android/app/common/http/d$n;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method R()V
    .locals 18
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->x0:Ljava/util/List;

    iget v2, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->y0:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;

    invoke-virtual {v1}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v2, Lcom/join/android/app/common/http/d$n;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x1

    add-int/2addr v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "fileName"

    invoke-direct {v2, v7, v4}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v4, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->x0:Ljava/util/List;

    iget v8, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->y0:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v4}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->getRank_auto_upload()I

    move-result v8

    iput v8, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->B:I

    .line 6
    :cond_0
    iget v8, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->B:I

    const/16 v9, 0xe

    const/4 v10, 0x0

    if-ne v8, v9, :cond_1

    if-eqz v4, :cond_2

    .line 7
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->getCost_coin()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v12, "costCoin"

    invoke-interface {v8, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v4}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->getGameId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "gameId"

    invoke-interface {v8, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->getRank_play_time()J

    move-result-wide v13

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "millisecond"

    invoke-interface {v8, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v4}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->getPlayId()Ljava/lang/String;

    move-result-object v1

    const-string v9, "playId"

    invoke-interface {v8, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->getRole_id()I

    move-result v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v13, "roleId"

    invoke-interface {v8, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v4}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v14, "uid"

    invoke-interface {v8, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v1, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->y:Lcom/join/mgps/Util/b;

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v15, "token"

    invoke-interface {v8, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Lcom/join/android/app/common/http/d;->I()Lcom/join/android/app/common/http/d$q;

    move-result-object v1

    iget-object v6, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s0:Ljava/lang/String;

    move-object/from16 v16, v6

    const/16 v6, 0x9

    new-array v6, v6, [Lcom/join/android/app/common/http/d$n;

    aput-object v2, v6, v10

    new-instance v2, Lcom/join/android/app/common/http/d$n;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v1

    .line 17
    invoke-virtual {v4}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->getCost_coin()I

    move-result v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v12, v1}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    aput-object v2, v6, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/join/android/app/common/http/d$n;

    .line 18
    invoke-virtual {v4}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->getGameId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v3, v10}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v6, v1

    new-instance v2, Lcom/join/android/app/common/http/d$n;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v2

    .line 19
    invoke-virtual {v4}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->getRank_play_time()J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v7, v1}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    aput-object v12, v6, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/join/android/app/common/http/d$n;

    .line 20
    invoke-virtual {v4}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->getPlayId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v9, v3}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v6, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/join/android/app/common/http/d$n;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    invoke-virtual {v4}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->getRole_id()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v13, v3}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v6, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/join/android/app/common/http/d$n;

    .line 22
    invoke-virtual {v4}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v14, v3}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v6, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/join/android/app/common/http/d$n;

    iget-object v3, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->y:Lcom/join/mgps/Util/b;

    .line 23
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v15, v3}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v6, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/join/android/app/common/http/d$n;

    .line 24
    invoke-static {v8}, Lcom/papa91/arc/util/SignUtils;->buildRequestSign(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sign"

    invoke-direct {v2, v4, v3}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v6, v1

    new-instance v7, Lcom/join/mgps/activity/GamePaiWeiActivty$g;

    invoke-direct {v7, v0}, Lcom/join/mgps/activity/GamePaiWeiActivty$g;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty;)V

    .line 25
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v4, "file"

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    .line 26
    invoke-virtual/range {v2 .. v8}, Lcom/join/android/app/common/http/d$q;->f(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Lcom/join/android/app/common/http/d$n;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    goto :goto_0

    .line 27
    :cond_1
    invoke-static {}, Lcom/join/android/app/common/http/d;->I()Lcom/join/android/app/common/http/d$q;

    move-result-object v1

    iget-object v3, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->r0:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v6, v4, [Lcom/join/android/app/common/http/d$n;

    aput-object v2, v6, v10

    new-instance v7, Lcom/join/mgps/activity/GamePaiWeiActivty$h;

    invoke-direct {v7, v0}, Lcom/join/mgps/activity/GamePaiWeiActivty$h;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty;)V

    .line 28
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v4, "file"

    move-object v2, v1

    .line 29
    invoke-virtual/range {v2 .. v8}, Lcom/join/android/app/common/http/d$q;->f(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Lcom/join/android/app/common/http/d$n;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method S(Lcom/join/mgps/dto/PaiWeiUploadFileBean;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaiWeiUploadFileBean;->getData()Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "200"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    const-string v2, "\u6570\u636e\u66f4\u65b0\u6210\u529f\uff01"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PaiWeiUploadFileBean;->getData()Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean;->getInfo()Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean$InfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean$InfoBean;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PaiWeiUploadFileBean;->getData()Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean;->getInfo()Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean$InfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean$InfoBean;->getCurrent_rank()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PaiWeiUploadFileBean;->getData()Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean;->getInfo()Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean$InfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean$InfoBean;->getRecplayer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->v:Ljava/lang/String;

    const-string v1, "\u547d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->l:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/PaiWeiUploadFileBean;->getData()Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean;->getInfo()Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean$InfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean$InfoBean;->getCoin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u547d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->l:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/PaiWeiUploadFileBean;->getData()Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean;->getInfo()Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean$InfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean$InfoBean;->getCoin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u5e01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->F(Z)V

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaiWeiUploadFileBean;->getData()Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean;->getInfo()Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean$InfoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean$InfoBean;->getRefresh()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->v(Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->s()V

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->s()V

    .line 16
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->F(Z)V

    .line 17
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->r(Z)V

    :goto_1
    const-string p1, ""

    .line 18
    iput-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->I:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->G:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->H:Ljava/lang/String;

    return-void
.end method

.method T(Lcom/join/mgps/dto/PaiWeiUploadFileNewBean;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaiWeiUploadFileNewBean;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    const-string v2, "\u6570\u636e\u66f4\u65b0\u6210\u529f\uff01"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PaiWeiUploadFileNewBean;->getData()Lcom/join/mgps/dto/PaiWeiUploadFileNewBean$DataBeanNew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/PaiWeiUploadFileNewBean$DataBeanNew;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PaiWeiUploadFileNewBean;->getData()Lcom/join/mgps/dto/PaiWeiUploadFileNewBean$DataBeanNew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/PaiWeiUploadFileNewBean$DataBeanNew;->getCurrent_rank()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PaiWeiUploadFileNewBean;->getData()Lcom/join/mgps/dto/PaiWeiUploadFileNewBean$DataBeanNew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/PaiWeiUploadFileNewBean$DataBeanNew;->getRecplayer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->v:Ljava/lang/String;

    const-string v1, "\u547d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->l:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/PaiWeiUploadFileNewBean;->getData()Lcom/join/mgps/dto/PaiWeiUploadFileNewBean$DataBeanNew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PaiWeiUploadFileNewBean$DataBeanNew;->getCoin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u547d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->l:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/PaiWeiUploadFileNewBean;->getData()Lcom/join/mgps/dto/PaiWeiUploadFileNewBean$DataBeanNew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PaiWeiUploadFileNewBean$DataBeanNew;->getCoin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u5e01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->F(Z)V

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaiWeiUploadFileNewBean;->getData()Lcom/join/mgps/dto/PaiWeiUploadFileNewBean$DataBeanNew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/PaiWeiUploadFileNewBean$DataBeanNew;->getRefresh()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->v(Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->s()V

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->s()V

    .line 16
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->F(Z)V

    .line 17
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->r(Z)V

    :goto_1
    const-string p1, ""

    .line 18
    iput-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->I:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->G:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->H:Ljava/lang/String;

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    const/4 p2, 0x0

    const-string v0, "\u56de\u653e\u5931\u8d25\uff01"

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const-string v0, "/"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->K:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->C0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/GamePaiWeiActivty;->N(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 8
    iget p2, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->B:I

    const/16 v0, 0xe

    if-ne p2, v0, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->getPlay_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->o(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->F:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Lcom/join/mgps/dialog/x0;->b()V

    .line 11
    invoke-static {}, Lcom/join/android/app/common/http/d;->B()Lcom/join/android/app/common/http/d$j;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->K:Ljava/lang/String;

    new-instance v2, Lcom/join/mgps/activity/GamePaiWeiActivty$d;

    invoke-direct {v2, p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty$d;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty;Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;)V

    invoke-virtual {v0, p2, v1, v2}, Lcom/join/android/app/common/http/d$j;->a(Ljava/lang/String;Ljava/lang/String;Lcom/join/android/app/common/http/d$p;)V

    :cond_2
    :goto_0
    return-void
.end method

.method o(Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "play_id"

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->y:Lcom/join/mgps/Util/b;

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object p1

    const-string v1, "token"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->y:Lcom/join/mgps/Util/b;

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object p1

    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Lcom/papa91/arc/util/SignUtils;->buildRequestSign(Lcom/google/gson/JsonObject;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sign"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/join/android/app/common/http/d;->G()Lcom/join/android/app/common/http/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/android/app/common/http/d;->H()Lcom/join/android/app/common/http/d$o;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->t0:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/join/mgps/activity/GamePaiWeiActivty$c;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GamePaiWeiActivty$c;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty;)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/join/android/app/common/http/d$o;->n(Ljava/lang/String;Ljava/lang/String;Lcom/join/android/app/common/http/d$p;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->v0:Lcom/join/mgps/activity/GamePaiWeiActivty$RankRecordReceiver;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->I:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->F:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Lcom/join/mgps/dialog/x0;->b()V

    const-string v0, "0"

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->P()V

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->q:Lcom/join/mgps/customview/AutoScrollViewPager;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/AutoScrollViewPager;->n()V

    :cond_0
    return-void
.end method

.method p()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/k;->n0()Lcom/join/mgps/rpc/impl/k;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->w:Lcom/join/mgps/rpc/k;

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/k;->o0()Lcom/join/mgps/rpc/impl/k;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->x:Lcom/join/mgps/rpc/k;

    .line 3
    iput-object p0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->u:Ljava/util/List;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/z;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->F:Lcom/join/mgps/dialog/x0;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3a

    .line 7
    div-int/lit8 v0, v0, 0x64

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 9
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit16 v2, v0, 0x2d5

    div-int/lit16 v2, v2, 0xd10

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/4 v2, 0x1

    .line 13
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 14
    iget-object v3, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v3, v0, 0x2c

    div-int/lit16 v3, v3, 0x14f

    invoke-direct {v1, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 16
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 22
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->J:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->J:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->n0:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->w1(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "arc"

    .line 26
    :goto_0
    invoke-static {p0}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/papa91/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->n0:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->K:Ljava/lang/String;

    goto :goto_1

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    const-string v3, "\u8bf7\u5148\u4e0b\u8f7d\u6e38\u620f\uff01"

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 29
    :goto_1
    new-instance v0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;

    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    iget-object v3, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->u:Ljava/util/List;

    invoke-direct {v0, v1, v3, p0}, Lcom/join/mgps/adapter/GamePaiWeiAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/join/mgps/adapter/GamePaiWeiAdapter$b;)V

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->t:Lcom/join/mgps/adapter/GamePaiWeiAdapter;

    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->o:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 31
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->u0:Lcom/join/mgps/pref/PrefDef_;

    .line 32
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/GamePaiWeiActivty;->r(Z)V

    .line 33
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.join.android.app.mgsim.rank_record_upload"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v1, Lcom/join/mgps/activity/GamePaiWeiActivty$RankRecordReceiver;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GamePaiWeiActivty$RankRecordReceiver;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty;)V

    iput-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->v0:Lcom/join/mgps/activity/GamePaiWeiActivty$RankRecordReceiver;

    .line 35
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method s()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->F:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->F:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method t()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->s:Landroid/content/Context;

    const-string v1, "\u7f51\u7edc\u9519\u8bef\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\uff01"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public u(Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;)Lcom/join/mgps/Util/IntentDateBean;
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;->getJump_type()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 3
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;->getLink_type()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 4
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;->getLink_type()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;->getLink_type()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 8
    :goto_0
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method v(Ljava/lang/String;)V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->y:Lcom/join/mgps/Util/b;

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->y:Lcom/join/mgps/Util/b;

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 3
    :try_start_0
    iget v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->B:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "gameid"

    .line 5
    iget-object v4, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->z:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "refresh"

    .line 6
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uid"

    .line 7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "token"

    .line 8
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->x:Lcom/join/mgps/rpc/k;

    iget-object v4, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->z:Ljava/lang/String;

    invoke-static {v0}, Lcom/papa91/arc/util/SignUtils;->buildRequestSign(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    move-object v5, p1

    invoke-interface/range {v1 .. v6}, Lcom/join/mgps/rpc/k;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ResultResMainBean;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->w:Lcom/join/mgps/rpc/k;

    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->z:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1, p1}, Lcom/join/mgps/rpc/k;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ResultResMainBean;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa91/arc/bean/PaiWeiDataBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/PaiWeiDataBean;->getMonth_best()Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa91/arc/bean/PaiWeiDataBean;

    invoke-virtual {v1}, Lcom/papa91/arc/bean/PaiWeiDataBean;->getAd_list()Ljava/util/List;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa91/arc/bean/PaiWeiDataBean;

    invoke-virtual {v2}, Lcom/papa91/arc/bean/PaiWeiDataBean;->getRank_list()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->C0:Ljava/util/List;

    .line 14
    iget-object v2, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->F0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->F0:Ljava/util/List;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/papa91/arc/bean/PaiWeiDataBean;

    invoke-virtual {v3}, Lcom/papa91/arc/bean/PaiWeiDataBean;->getRoles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa91/arc/bean/PaiWeiDataBean;

    invoke-virtual {v2}, Lcom/papa91/arc/bean/PaiWeiDataBean;->getRoles()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->E0:Ljava/util/List;

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa91/arc/bean/PaiWeiDataBean;

    invoke-virtual {v2}, Lcom/papa91/arc/bean/PaiWeiDataBean;->getUnit()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->v:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/arc/bean/PaiWeiDataBean;

    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean;->getMinimum_passing_time()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->q0:I

    .line 19
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->J(Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;)V

    .line 20
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->I(Ljava/util/List;)V

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->K()V

    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->L()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 23
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->s()V

    return-void

    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->s()V

    .line 25
    throw p1
.end method

.method w()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->y:Lcom/join/mgps/Util/b;

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->y:Lcom/join/mgps/Util/b;

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 3
    :try_start_0
    iget v2, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->B:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "gameid"

    .line 5
    iget-object v4, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->z:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "uid"

    .line 6
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "token"

    .line 7
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->x:Lcom/join/mgps/rpc/k;

    iget-object v3, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->z:Ljava/lang/String;

    iget-object v4, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->y:Lcom/join/mgps/Util/b;

    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/papa91/arc/util/SignUtils;->buildRequestSign(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v3, v4, v2}, Lcom/join/mgps/rpc/k;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ResultResMainBean;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->w:Lcom/join/mgps/rpc/k;

    iget-object v2, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->z:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/join/mgps/rpc/k;->W(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ResultResMainBean;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GetPaiWeiPlayCodeBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GetPaiWeiPlayCodeBean;->getPlay_code()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->G:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->I:Ljava/lang/String;

    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->M(Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->t()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 16
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->t()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->s()V

    return-void

    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->s()V

    .line 19
    throw v0
.end method

.method y(Z)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Ln1/v;->n()Ln1/v;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->x0:Ljava/util/List;

    iget v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->y0:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;

    invoke-virtual {p1, v0}, Lg1/b;->delete(Ljava/lang/Object;)I

    .line 2
    iget p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->z0:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->z0:I

    .line 3
    :cond_0
    iget p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->y0:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->y0:I

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->x0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->R()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->s()V

    .line 7
    iget p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->z0:I

    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->x0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_2

    const-string p1, "1"

    .line 8
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->r(Z)V

    :goto_0
    return-void
.end method
