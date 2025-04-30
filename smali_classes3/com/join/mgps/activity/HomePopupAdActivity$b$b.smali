.class Lcom/join/mgps/activity/HomePopupAdActivity$b$b;
.super Ljava/lang/Object;
.source "HomePopupAdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HomePopupAdActivity$b;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/RecomDatabean;

.field final synthetic b:Lcom/join/mgps/activity/HomePopupAdActivity$b;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HomePopupAdActivity$b;Lcom/join/mgps/dto/RecomDatabean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity$b;

    iput-object p2, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b$b;->a:Lcom/join/mgps/dto/RecomDatabean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity$b;

    iget-object v0, v0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b$b;->a:Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/activity/HomePopupAdActivity;->I0(Landroid/content/Context;Lcom/join/mgps/dto/AppBeanMain;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity$b;

    iget-object p1, p1, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
