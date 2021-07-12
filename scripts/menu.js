let show = true;
const menuSection = document.querySelector(".menu-section");
const toggleButton = menuSection.querySelector("#toggle-button");

toggleButton.addEventListener("click", () => {

    document.body.style.overflow = show ? "hidden" : "initial"
    menuSection.classList.toggle("on", show);
    // toggle verifica (se tem on, ele tira, se nao tem o on, ele coloca)
    show = !show;
})