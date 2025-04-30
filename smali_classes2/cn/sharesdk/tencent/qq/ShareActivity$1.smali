.class Lcn/sharesdk/tencent/qq/ShareActivity$1;
.super Ljava/lang/Thread;
.source "ShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qq/ShareActivity;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:I

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:I

.field final synthetic m:Lcn/sharesdk/tencent/qq/ShareActivity;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qq/ShareActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    iput-object p2, p0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->e:Ljava/lang/String;

    iput-object p7, p0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->f:Ljava/lang/String;

    iput-object p8, p0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->g:Ljava/lang/String;

    iput p9, p0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->h:I

    iput-object p10, p0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->i:Ljava/lang/String;

    iput-object p11, p0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->j:Ljava/lang/String;

    iput-object p12, p0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->k:Ljava/lang/String;

    iput p13, p0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->l:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v1, p0

    const-string v2, "ShareSDK"

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1
    :try_start_0
    iget-object v0, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    invoke-static {v0}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$000(Lcn/sharesdk/tencent/qq/ShareActivity;)Landroid/app/Activity;

    move-result-object v0

    iget-object v5, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->a:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " QQ ShareActivity path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v5, v2, v6}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    :try_start_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " QQ ShareActivity path catch "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v5, v2, v6}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    move-object v10, v0

    .line 5
    iget-object v5, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    iget-object v6, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->b:Ljava/lang/String;

    iget-object v7, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->c:Ljava/lang/String;

    iget-object v8, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->d:Ljava/lang/String;

    iget-object v9, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->a:Ljava/lang/String;

    iget-object v11, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->e:Ljava/lang/String;

    iget-object v12, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->f:Ljava/lang/String;

    iget-object v13, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->g:Ljava/lang/String;

    iget v14, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->h:I

    iget-object v15, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->i:Ljava/lang/String;

    iget-object v0, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->j:Ljava/lang/String;

    iget-object v3, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->k:Ljava/lang/String;

    iget v4, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->l:I

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move/from16 v18, v4

    invoke-static/range {v5 .. v18}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$100(Lcn/sharesdk/tencent/qq/ShareActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 6
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 7
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " QQ ShareActivity run catch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v3, v2, v4}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_1
    return-void
.end method
