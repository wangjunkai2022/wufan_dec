.class Lcom/join/mgps/fragment/w0$a;
.super Li1/a;
.source "FriendAddFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/w0;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Li1/a$a;

.field final synthetic b:Lcom/join/mgps/fragment/w0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/w0;Li1/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/w0$a;->b:Lcom/join/mgps/fragment/w0;

    iput-object p2, p0, Lcom/join/mgps/fragment/w0$a;->a:Li1/a$a;

    invoke-direct {p0}, Li1/a;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(I)Li1/a$b;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/w0$a;->a:Li1/a$a;

    return-object p1
.end method
