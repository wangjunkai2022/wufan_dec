.class public final synthetic Lcom/join/mgps/adapter/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/adapter/f;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/f;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/e;->a:Lcom/join/mgps/adapter/f;

    iput p2, p0, Lcom/join/mgps/adapter/e;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/join/mgps/adapter/e;->a:Lcom/join/mgps/adapter/f;

    iget v1, p0, Lcom/join/mgps/adapter/e;->b:I

    invoke-static {v0, v1, p1}, Lcom/join/mgps/adapter/f;->a(Lcom/join/mgps/adapter/f;ILandroid/view/View;)V

    return-void
.end method
