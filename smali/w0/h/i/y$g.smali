.class public Lw0/h/i/y$g;
.super Lw0/h/i/y$f;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw0/h/i/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# direct methods
.method public constructor <init>(Lw0/h/i/y;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lw0/h/i/y$f;-><init>(Lw0/h/i/y;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public a()Lw0/h/i/y;
    .locals 1

    .line 1
    iget-object v0, p0, Lw0/h/i/y$e;->i:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lw0/h/i/y;->i(Landroid/view/WindowInsets;)Lw0/h/i/y;

    move-result-object v0

    return-object v0
.end method

.method public e()Lw0/h/i/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lw0/h/i/y$e;->i:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lw0/h/i/c;

    invoke-direct {v1, v0}, Lw0/h/i/c;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lw0/h/i/y$g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lw0/h/i/y$g;

    .line 3
    iget-object v1, p0, Lw0/h/i/y$e;->i:Landroid/view/WindowInsets;

    iget-object v3, p1, Lw0/h/i/y$e;->i:Landroid/view/WindowInsets;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lw0/h/i/y$e;->l:Lw0/h/c/b;

    iget-object p1, p1, Lw0/h/i/y$e;->l:Lw0/h/c/b;

    .line 4
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw0/h/i/y$e;->i:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->hashCode()I

    move-result v0

    return v0
.end method
