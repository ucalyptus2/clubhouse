.class public Lw0/n/a/g0;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lw0/n/a/l0;

.field public final synthetic j:Landroid/view/View;

.field public final synthetic k:Landroidx/fragment/app/Fragment;

.field public final synthetic l:Ljava/util/ArrayList;

.field public final synthetic m:Ljava/util/ArrayList;

.field public final synthetic n:Ljava/util/ArrayList;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lw0/n/a/l0;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw0/n/a/g0;->h:Ljava/lang/Object;

    iput-object p2, p0, Lw0/n/a/g0;->i:Lw0/n/a/l0;

    iput-object p3, p0, Lw0/n/a/g0;->j:Landroid/view/View;

    iput-object p4, p0, Lw0/n/a/g0;->k:Landroidx/fragment/app/Fragment;

    iput-object p5, p0, Lw0/n/a/g0;->l:Ljava/util/ArrayList;

    iput-object p6, p0, Lw0/n/a/g0;->m:Ljava/util/ArrayList;

    iput-object p7, p0, Lw0/n/a/g0;->n:Ljava/util/ArrayList;

    iput-object p8, p0, Lw0/n/a/g0;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lw0/n/a/g0;->h:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lw0/n/a/g0;->i:Lw0/n/a/l0;

    iget-object v2, p0, Lw0/n/a/g0;->j:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Lw0/n/a/l0;->o(Ljava/lang/Object;Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lw0/n/a/g0;->i:Lw0/n/a/l0;

    iget-object v1, p0, Lw0/n/a/g0;->h:Ljava/lang/Object;

    iget-object v2, p0, Lw0/n/a/g0;->k:Landroidx/fragment/app/Fragment;

    iget-object v3, p0, Lw0/n/a/g0;->l:Ljava/util/ArrayList;

    iget-object v4, p0, Lw0/n/a/g0;->j:Landroid/view/View;

    invoke-static {v0, v1, v2, v3, v4}, Lw0/n/a/j0;->h(Lw0/n/a/l0;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lw0/n/a/g0;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_0
    iget-object v0, p0, Lw0/n/a/g0;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lw0/n/a/g0;->o:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v1, p0, Lw0/n/a/g0;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, p0, Lw0/n/a/g0;->i:Lw0/n/a/l0;

    iget-object v2, p0, Lw0/n/a/g0;->o:Ljava/lang/Object;

    iget-object v3, p0, Lw0/n/a/g0;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v0}, Lw0/n/a/l0;->p(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lw0/n/a/g0;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    iget-object v0, p0, Lw0/n/a/g0;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Lw0/n/a/g0;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
