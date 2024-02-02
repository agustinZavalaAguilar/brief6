/*------------Fonction pour avertir sur la suppression d'un registre------------*/


function confirmDelete() {
    var result = confirm('are you sure you want to delete this file you poor fool?');
    
        window.location.href = "../src/delete.php";

}

/*-------------Toggle function-------------------------------------------------- */

function toggleFilter() {
    console.log("Inside the function");
    let section = document.getElementById('collapseFilter');
    section.classList.toggle('hidden');
}



