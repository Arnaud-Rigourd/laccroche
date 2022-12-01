import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["clone", "context", "floatImage"]

  connect() {
    this.disableScroll = false
    this.scrollHeight = 0
    this.scrollPos = 0
    this.clonesHeight = 0

    this.imageCount = this.floatImageTargets.length

    document.querySelector("html").classList.add("projects-top")

    this.#reCalc()

    window.addEventListener('resize', (event) => {
      window.requestAnimationFrame(this.#reCalc);
    }, false);
  }

  disconnect() {
    document.querySelector("html").classList.remove("projects-top")
  }

  scroll(event){
    event.preventDefault()
    window.requestAnimationFrame(this.#scrollUpdate);
  }

  float(event) {
    let x = event.clientX * 100 / window.innerWidth
    let y = event.clientY * 100 / window.innerHeight

    x /= 10
    y /= 10

    x += "%"
    y += "%"

    for (let i=0; i < this.imageCount; i++) {
      this.floatImageTargets[i].style.transform = "translate(-" + x + ",-" + y + ")"
      this.floatImageTargets[i].style.transition = "transform 600ms linear"
    }
  }

  #getScrollPos = () => {
    return (this.contextTarget.pageYOffset || this.contextTarget.scrollTop) - (this.contextTarget.clientTop || 0);
  }

  #setScrollPos = (pos) => {
    this.contextTarget.scrollTop = pos;
  }

  #getClonesHeight = () => {
    this.clonesHeight = 0;

    for (let i = 0; i < this.cloneTargets.length; i++) {
      this.clonesHeight += this.cloneTargets[i].offsetHeight;
    }

    return this.clonesHeight;
  }

  #reCalc = () => {
    this.scrollPos = this.#getScrollPos();
    this.scrollHeight = this.contextTarget.scrollHeight;
    this.clonesHeight = this.#getClonesHeight();

    if (this.scrollPos <= 0) {
      this.#setScrollPos(1);
    }
  }

  #scrollUpdate = () => {
    if (!this.disableScroll) {
      this.scrollPos = this.#getScrollPos();

      if (this.clonesHeight + this.scrollPos >= this.scrollHeight) {
        this.#setScrollPos(1);
        this.disableScroll = true;
      } else if (this.scrollPos <= 0) {
        this.#setScrollPos(this.scrollHeight - this.clonesHeight);
        this.disableScroll = true;
      }
    }

    if (this.disableScroll) {
      window.setTimeout(this.#enableScroll.bind(this), 40);
    }
  }

  #enableScroll() {
    this.disableScroll = false;
  }
}
