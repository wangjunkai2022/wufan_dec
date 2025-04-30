.class public final Lo/a;
.super Lo/b;


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lo/b;-><init>()V

    iput-object p1, p0, Lo/a;->c:Ljava/lang/String;

    iput-object p2, p0, Lo/a;->d:Ljava/lang/String;

    return-void
.end method
