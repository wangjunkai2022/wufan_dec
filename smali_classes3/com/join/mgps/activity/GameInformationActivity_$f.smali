.class Lcom/join/mgps/activity/GameInformationActivity_$f;
.super Ljava/lang/Object;
.source "GameInformationActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameInformationActivity_;->g1(Landroid/widget/ImageView;Landroid/widget/TextView;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/join/mgps/activity/GameInformationActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameInformationActivity_;Landroid/widget/ImageView;Landroid/widget/TextView;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity_$f;->e:Lcom/join/mgps/activity/GameInformationActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/GameInformationActivity_$f;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/join/mgps/activity/GameInformationActivity_$f;->b:Landroid/widget/TextView;

    iput-boolean p4, p0, Lcom/join/mgps/activity/GameInformationActivity_$f;->c:Z

    iput-object p5, p0, Lcom/join/mgps/activity/GameInformationActivity_$f;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity_$f;->e:Lcom/join/mgps/activity/GameInformationActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity_$f;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity_$f;->b:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/join/mgps/activity/GameInformationActivity_$f;->c:Z

    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivity_$f;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/activity/GameInformationActivity_;->s1(Lcom/join/mgps/activity/GameInformationActivity_;Landroid/widget/ImageView;Landroid/widget/TextView;ZLjava/lang/String;)V

    return-void
.end method
