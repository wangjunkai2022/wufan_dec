.class public final synthetic Lcom/join/mgps/adapter/c2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/Util/IntentDateBean;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/Util/IntentDateBean;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/c2;->a:Lcom/join/mgps/Util/IntentDateBean;

    iput p2, p0, Lcom/join/mgps/adapter/c2;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/join/mgps/adapter/c2;->a:Lcom/join/mgps/Util/IntentDateBean;

    iget v1, p0, Lcom/join/mgps/adapter/c2;->b:I

    invoke-static {v0, v1, p1}, Lcom/join/mgps/adapter/e2;->a(Lcom/join/mgps/Util/IntentDateBean;ILandroid/view/View;)V

    return-void
.end method
