.class Lcom/join/mgps/activity/GameMainNewActivity$g;
.super Landroid/app/Dialog;
.source "GameMainNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameMainNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GameMainNewActivity$g$b;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameMainNewActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/GameMainNewActivity;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity$g;->a:Lcom/join/mgps/activity/GameMainNewActivity;

    .line 2
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/activity/GameMainNewActivity;Landroid/content/Context;I)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity$g;->a:Lcom/join/mgps/activity/GameMainNewActivity;

    .line 6
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Lcom/join/mgps/activity/GameMainNewActivity;Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity$g;->a:Lcom/join/mgps/activity/GameMainNewActivity;

    .line 4
    invoke-direct {p0, p2, p3, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 p1, -0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity$g;->a:Lcom/join/mgps/activity/GameMainNewActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/GameMainNewActivity;->a(Lcom/join/mgps/activity/GameMainNewActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c04d8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0908e7

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 6
    new-instance v2, Lcom/join/mgps/activity/GameMainNewActivity$g$b;

    invoke-direct {v2, p0, v1}, Lcom/join/mgps/activity/GameMainNewActivity$g$b;-><init>(Lcom/join/mgps/activity/GameMainNewActivity$g;Lcom/join/mgps/activity/GameMainNewActivity$a;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7
    new-instance v1, Lcom/join/mgps/activity/GameMainNewActivity$g$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameMainNewActivity$g$a;-><init>(Lcom/join/mgps/activity/GameMainNewActivity$g;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method
