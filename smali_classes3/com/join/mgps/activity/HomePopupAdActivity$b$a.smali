.class Lcom/join/mgps/activity/HomePopupAdActivity$b$a;
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/join/mgps/dto/AppBeanMain;

.field final synthetic c:Lcom/join/mgps/activity/HomePopupAdActivity$b;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HomePopupAdActivity$b;Landroid/content/Context;Lcom/join/mgps/dto/AppBeanMain;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b$a;->c:Lcom/join/mgps/activity/HomePopupAdActivity$b;

    iput-object p2, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b$a;->b:Lcom/join/mgps/dto/AppBeanMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b$a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b$a;->b:Lcom/join/mgps/dto/AppBeanMain;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->I0(Landroid/content/Context;Lcom/join/mgps/dto/AppBeanMain;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b$a;->c:Lcom/join/mgps/activity/HomePopupAdActivity$b;

    iget-object p1, p1, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
