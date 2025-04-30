.class public final Lorg/androidannotations/api/sharedpreferences/q;
.super Lorg/androidannotations/api/sharedpreferences/a;
.source "StringSetPrefEditorField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/androidannotations/api/sharedpreferences/e<",
        "TT;>;>",
        "Lorg/androidannotations/api/sharedpreferences/a<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/androidannotations/api/sharedpreferences/e;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/androidannotations/api/sharedpreferences/a;-><init>(Lorg/androidannotations/api/sharedpreferences/e;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/util/Set;)Lorg/androidannotations/api/sharedpreferences/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/sharedpreferences/a;->a:Lorg/androidannotations/api/sharedpreferences/e;

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/e;->f()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/androidannotations/api/sharedpreferences/a;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/androidannotations/api/sharedpreferences/m;->e(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/util/Set;)V

    .line 2
    iget-object p1, p0, Lorg/androidannotations/api/sharedpreferences/a;->a:Lorg/androidannotations/api/sharedpreferences/e;

    return-object p1
.end method
