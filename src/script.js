/*-------------Toggle function-------------------------------------------------- */

function toggleFilter() {
    console.log("Inside the function");
    let section = document.getElementById('collapseFilter');
    section.classList.toggle('hidden');
}

/*--------------Confirm delete-------------------------------------------------- */

function confirmDelete(favoriId){
    if (confirm("Confirmez-vous la suppresion définitive de ce registre?")){
        window.location.href = "delete.php?id_favori=" + favoriId;
    }
}



