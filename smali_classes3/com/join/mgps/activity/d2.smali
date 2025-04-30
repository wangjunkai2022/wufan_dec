.class public final synthetic Lcom/join/mgps/activity/d2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/f2;

.field public final synthetic b:I

.field public final synthetic c:Lcom/join/mgps/dto/BannerBean;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/f2;ILcom/join/mgps/dto/BannerBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/d2;->a:Lcom/join/mgps/activity/f2;

    iput p2, p0, Lcom/join/mgps/activity/d2;->b:I

    iput-object p3, p0, Lcom/join/mgps/activity/d2;->c:Lcom/join/mgps/dto/BannerBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/join/mgps/activity/d2;->a:Lcom/join/mgps/activity/f2;

    iget v1, p0, Lcom/join/mgps/activity/d2;->b:I

    iget-object v2, p0, Lcom/join/mgps/activity/d2;->c:Lcom/join/mgps/dto/BannerBean;

    invoke-static {v0, v1, v2, p1}, Lcom/join/mgps/activity/f2;->M(Lcom/join/mgps/activity/f2;ILcom/join/mgps/dto/BannerBean;Landroid/view/View;)V

    return-void
.end method
