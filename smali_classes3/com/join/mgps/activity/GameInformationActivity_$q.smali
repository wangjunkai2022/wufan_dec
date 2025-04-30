.class Lcom/join/mgps/activity/GameInformationActivity_$q;
.super Lorg/androidannotations/api/a$c;
.source "GameInformationActivity_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameInformationActivity_;->W0(Lcom/join/mgps/dto/InformationCommentBean;Landroid/widget/ImageView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/InformationCommentBean;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Lcom/join/mgps/activity/GameInformationActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameInformationActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity_$q;->d:Lcom/join/mgps/activity/GameInformationActivity_;

    iput-object p6, p0, Lcom/join/mgps/activity/GameInformationActivity_$q;->a:Lcom/join/mgps/dto/InformationCommentBean;

    iput-object p7, p0, Lcom/join/mgps/activity/GameInformationActivity_$q;->b:Landroid/widget/ImageView;

    iput-object p8, p0, Lcom/join/mgps/activity/GameInformationActivity_$q;->c:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/a$c;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity_$q;->d:Lcom/join/mgps/activity/GameInformationActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity_$q;->a:Lcom/join/mgps/dto/InformationCommentBean;

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity_$q;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivity_$q;->c:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/activity/GameInformationActivity_;->o1(Lcom/join/mgps/activity/GameInformationActivity_;Lcom/join/mgps/dto/InformationCommentBean;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
