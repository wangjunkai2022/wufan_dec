.class Lcom/join/mgps/activity/ApFightActivity$c;
.super Ljava/lang/Object;
.source "ApFightActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ApFightActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ApFightActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ApFightActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$c;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$c;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/FightIntroductionActivity_;->F0(Landroid/content/Context;)Lcom/join/mgps/activity/FightIntroductionActivity_$b;

    move-result-object p1

    const/high16 v0, 0x400000

    invoke-virtual {p1, v0}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/FightIntroductionActivity_$b;

    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$c;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$000(Lcom/join/mgps/activity/ApFightActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/FightIntroductionActivity_$b;->a(I)Lcom/join/mgps/activity/FightIntroductionActivity_$b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method
