.class public final synthetic Lcom/join/mgps/adapter/v1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/adapter/w1;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/w1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/v1;->a:Lcom/join/mgps/adapter/w1;

    iput p2, p0, Lcom/join/mgps/adapter/v1;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/join/mgps/adapter/v1;->a:Lcom/join/mgps/adapter/w1;

    iget v1, p0, Lcom/join/mgps/adapter/v1;->b:I

    invoke-static {v0, v1, p1}, Lcom/join/mgps/adapter/w1;->a(Lcom/join/mgps/adapter/w1;ILandroid/view/View;)V

    return-void
.end method
