.class Lru/alexbykov/nopermission/b$a;
.super Ljava/lang/Object;
.source "PermissionHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/alexbykov/nopermission/b;->x([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lru/alexbykov/nopermission/b;


# direct methods
.method constructor <init>(Lru/alexbykov/nopermission/b;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lru/alexbykov/nopermission/b$a;->b:Lru/alexbykov/nopermission/b;

    iput-object p2, p0, Lru/alexbykov/nopermission/b$a;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lru/alexbykov/nopermission/b$a;->b:Lru/alexbykov/nopermission/b;

    iget-object p2, p0, Lru/alexbykov/nopermission/b$a;->a:[Ljava/lang/String;

    invoke-static {p1, p2}, Lru/alexbykov/nopermission/b;->a(Lru/alexbykov/nopermission/b;[Ljava/lang/String;)V

    return-void
.end method
