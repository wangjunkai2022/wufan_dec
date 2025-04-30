.class public final synthetic Lcom/papa91/arc/util/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/papa91/arc/util/a;->a:Z

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-boolean v0, p0, Lcom/papa91/arc/util/a;->a:Z

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/papa91/arc/util/SignUtils;->a(ZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
